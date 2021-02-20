(*****************************************************************************
 * FILE      : options.ml
 * CONTENTS  : Implementation of module Options.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-02-15 13:19:10 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * DATATYPE  : [progressType] represents the different kinds of progress
 *           : indicators available.
 * COMMENTS  : 
 *****************************************************************************)
type progressType = COUNTER | SPINNER | PERCENT | BAR | SILENT;;
  
(*****************************************************************************
 * EXCEPTIONS 
 *****************************************************************************)
exception OptionsError of string;;

let error s = raise(OptionsError s);;
let warning s = (prerr_string("Warning: " ^ s); prerr_newline());;

(*****************************************************************************
 * DATATYPE  : [options] is the representation of ADT Options.
 * COMMENTS  : The traceSimple has to be bool for 'typing reasons'; ie
 *           : 'mutable x : bool' =/= 'x : bool ref'.
 *****************************************************************************)
type options =
  {
    traceSimple         : bool ref;  (* Don't use reflection and shadowing *)
    showTime            : bool ref;  (* Show elapsed trace time *)
    mutable progress : progressType; (* Optional progress meter *)
    mutable reflectionDepth : int;   (* Max recursive calls to trace a ray *)
    mutable zoomValue       : float; (* Zoom factor for camera *)
    mutable imageWidth      : int;   (* Width of image to create, in pixels *)
    mutable imageHeight     : int;   (* Height of image to create, in pixels *)
    mutable width           : float; (* Width of image in scene coordinates *)
    mutable height          : float; (* Height of image in scene coordinates *)
    mutable filename        : string;(* Name of output file *)
    mutable args            : string (* Original argstring *)
  } 

(*****************************************************************************
 * FUNCTION  : [optionsUsedString] returns a string representation of the
 *           : arguments given at command line. 
 * COMMENTS  : 
 *****************************************************************************)
let optionsUsedString args =
  let l = Array.length args in
  if l > 1 then
    let stripArgs a = Array.sub a 1 (l - 2) in
    let concatArray a = Array.fold_right (fun x y -> x ^ " " ^ y) a "" in
    concatArray(stripArgs args)
  else
    "";;
  
(*****************************************************************************
 * FUNCTION  : [create] returns a new options instance, with all values except
 *           : filename set to default values (see corresponding module for
 *           : definitions/descriptions)
 * COMMENTS  : Defaults for camera not used, they are calculated. See 
 *           : interface for reason.
 *****************************************************************************)
let create() =
  {
    traceSimple = ref Tracer.defaultTraceSimple;
    showTime = ref false;
    progress = SILENT;
    reflectionDepth = Tracer.defaultReflectionDepth;
    zoomValue = Camera.defaultZoomValue;
    imageWidth = Camera.defaultImageWidth;   (* Not used *)
    imageHeight = Camera.defaultImageHeight; (* Not used *)
    width = Camera.defaultWidth;             (* Not used *)
    height = Camera.defaultHeight;           (* Not used *)
    filename = "";
    args = optionsUsedString (Array.copy Sys.argv)
  };;

(*****************************************************************************
 * FUNCTION  : [set*] sets the property of the options record.
 * COMMENTS  : 
 *****************************************************************************)
let setTraceSimple options x = options.traceSimple := x;;
let setShowTime options x = options.showTime := x;;
let setProgress options x = options.progress <- x;;
let setReflectionDepth options x = options.reflectionDepth <- x;;
let setZoomValue options x = options.zoomValue <- x;;
let setImageWidth options x = options.imageWidth <- x;;
let setImageHeight options x = options.imageHeight <- x;;
let setWidth options x = options.width <- x;;
let setHeight options x = options.height <- x;;
let setFilename options x = options.filename <- x;;
let setArgs options x = options.args <- x;;
    
(*****************************************************************************
 * FUNCTION  : [showTime] is public, see interface (options.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let showTime options =
  !(options.showTime);;

(*****************************************************************************
 * FUNCTION  : [traceSimple] is public, see interface (options.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let traceSimple options =
  !(options.traceSimple);;
    
(*****************************************************************************
 * FUNCTION  : [camera] is public, see interface (options.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let createProgress opt =
  match opt.progress with
    COUNTER ->
      SOME(Progress.createCounter stdout "/" opt.imageHeight)
  | SPINNER ->
      SOME(Progress.createSpinner stdout)
  | PERCENT ->
      SOME(Progress.createPercent stdout opt.imageWidth)
  | BAR ->
      SOME(Progress.createBar stdout opt.imageHeight 80 '.')
  | SILENT -> NONE;;

let camera options camera =
  let p = createProgress options in
  let w = options.width in
  let h = options.height in
  let x = options.imageWidth in
  let y = options.imageHeight in
  let z = options.zoomValue in
  camera p w h x y z;;

(*****************************************************************************
 * FUNCTION  : [tracer] is public, see interface (options.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let tracer options tracer = 
  let rd = options.reflectionDepth in
  let ts = !(options.traceSimple) in
  tracer rd ts;;

(*****************************************************************************
 * FUNCTION  : [filename] is public, see interface (options.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let filename options = options.filename;; 

(*****************************************************************************
 * FUNCTION  : [progress] 
 * COMMENTS  : 
 *****************************************************************************)
let progressOfString s =
  match String.lowercase s with
    "counter" -> COUNTER
  | "spinner" -> SPINNER
  | "percent" -> PERCENT
  | "bar" -> BAR
  | _ -> (warning("Unkown progress indicator type, going silent"); SILENT);;
    
(*****************************************************************************
 * FUNCTION  : [calculate4th seen opts] calculates the 4'th of the -x -y -w -h 
 *           : parameters ands sets the options opts accordingly. seen is an 
 *           : integer defining which of the four parameters to calculate.
 * COMMENTS  : 
 *****************************************************************************)
let calculate4th seen opts =
  let x = float opts.imageWidth in
  let y = float opts.imageHeight in
  let w = opts.width in
  let h = opts.height in
  match seen with
  (* height (-h) not seen *)
    7 -> setHeight opts ((y *. w) /. x)
  (* width (-w) not seen *)
  | 11 -> setWidth opts ((x *. h) /. y)
  (* pixel height (-y) not seen *)
  | 13 -> setImageHeight opts (truncate((h *. x) /. w))
  (* pixel width (-x) not seen *)
  | 14 -> setImageWidth opts (truncate((w *. y) /. h))
  (* shouldn't happen*)
  | _ -> Error.failure "Options.calculate4th" "Match fallthrough";;
    
(*****************************************************************************
 * FUNCTION  : [parse] is public, see interface (options.mli) for description.
 * COMMENTS  : The 'seen' integer is a bit pattern defining which of the 
 *           : parameters that has been seen:
 *           : 0001b = seen -x
 *           : 0010b = seen -y
 *           : 0100b = seen -w
 *           : 1000b = seen -h
 *           : 'lor'-ing all values for seen parameters makes it easy to
 *           : see what has been defined or not. 0 means none, 15 means all.
 *           : Adding three of them results in a value meaning that the fourth
 *           : hasn't been seen; eg not seen -h is 0001b + 0010b + 0100b = 
 *           : 0111b = 7.
 *****************************************************************************)
let parse() =
  (* Initialize counter/functions to calculate what has been seen *)
  let seen = ref 0 in
  let seenX() = seen := !seen lor 1 in
  let seenY() = seen := !seen lor 2 in
  let seenW() = seen := !seen lor 4 in
  let seenH() = seen := !seen lor 8 in
  
  (* Empty options to fill up with parsed values *)
  let opts = create() in

  (* The list of switches and corresponding actions and description strings *)
  let speclist = 
    [
     ("-q", Arg.Unit(fun () -> setTraceSimple opts true), 
      " : Quickmode: don't use reflection and shadowing. Default is off");
     ("-t", Arg.Unit(fun () -> setShowTime opts true), 
      " : Show time spent tracing, in ms. Default is off");
     ("-r", Arg.Int(setReflectionDepth opts), 
      "d: Use reflection depth d. Default is 5");
     ("-z", Arg.Float(setZoomValue opts), 
      "x: Use camera zoom value of x. Default is 1.0");
     ("-w", Arg.Float(function w -> seenW(); setWidth opts w),
      "x: Use camera width x");
     ("-h", Arg.Float(function h -> seenH(); setHeight opts h),
      "y: Use camera height y");
     ("-x", Arg.Int(function x -> seenX(); setImageWidth opts x), 
      "i: Create bitmap with width i pixels");
     ("-y", Arg.Int(function y -> seenY(); setImageHeight opts y), 
      "j: Create bitmap with height j pixels");
     ("-p", Arg.String(fun s -> setProgress opts (progressOfString s)),
      "t: Show progress indicator t, t can be: counter, spinner, percent or" ^
      " bar")
    ] in

  (* Function to call anonymous argument with (the filename in this case) *)
  let anonfun = setFilename opts in

  (* Usage string to print with '-help' *)
  let usage = 
    "Usage: tracer [options] filename\n" ^
    "Produces an image by ray tracing a scene described in a file read" ^
    " from stdin.\nThe description file language is a subset of the" ^
    " PovRay format and the\nresulting bitmap is in binary PPM format.\n" ^
    "At least 3 of 4 of -x -y -w -h has to be set. All 4 may cause image" ^
    " to look\ndistorted.\nOptions are:\n" in

  (* Do the parsing of command line *)
  Arg.parse speclist anonfun usage;
  
  (* A filename has to be given *)
  if filename opts = "" then
    error "No filename given"
  else
    (* Three or four of w/h/x/y has to be set. *)
    ((match !seen with
    (* 3 of 4 given, calculate the 4'th *)
      7 | 11 | 13 | 14 ->
	calculate4th (!seen) opts
    (* 4 given *)
    | 15 ->
	warning "All of -w -h -x -y given, image may look distorted"
    (* 2 or less *could* be handled if default values are used... but no... *)
    | _ ->
	error "At least 3 of -w -h -x -y has to be given");
	opts);;

(*****************************************************************************
 * FUNCTION  : [toString] is public, see interface (options.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let toString opts =
  opts.args;;
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
