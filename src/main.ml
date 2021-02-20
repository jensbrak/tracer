(*****************************************************************************
 * FILE      : main.ml
 * CONTENTS  : Main function for the ray tracer.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-02-16 09:12:30 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * CONSTANT  : [creator] is a string describing the caller of the program, ie
 *           : who, where and which hardware/software used. 
 * COMMENTS  : On Linux/x86 machines the host type gets a little bit g
 *           : misleadin as *all* processors above 286 is reported as 386...
 *****************************************************************************)
let creator =
  let hostName  = try Sys.getenv "HOSTNAME" with Not_found -> "<unkown>" in
  let hostType  = try Sys.getenv "HOSTTYPE" with Not_found -> "<unkown>" in
  let osType    = try Sys.getenv "OSTYPE" with Not_found -> "<unkown>" in
  let userName  = try Sys.getenv "USER" with Not_found -> "<unkown>" in
  userName ^ "@" ^ hostName ^ " (" ^ hostType ^ " running " ^ osType ^ ")";;

(*****************************************************************************
 * CONSTANT  : [binary] is the program name. 
 * COMMENTS  : This "constant" exists at several places. Not good, should be
 *           : automatically generated. The constant here has no real effect; 
 *           : used in error messages and similar only.
 *****************************************************************************)
let binary = "tracer";;

(*****************************************************************************
 * CONSTANT  : [copyright] is a copyright string.
 * COMMENTS  : Version hard coded. Should also be generated.
 *****************************************************************************)
let copyright = binary ^ " v1.01, (c) Jens Olsson 2000";;

(*****************************************************************************
 * FUNCTION  : [print s] prints string s to stdout and flushes it. 
 * EFFECTS   : Prints a string to stdout.
 * COMMENTS  : 
 *****************************************************************************)
let print s = (print_string s; flush stdout);;

(*****************************************************************************
 * FUNCTION  : [reportError s]  prints an error string to stderr preceeded by
 *           : the program name.
 * EFFECTS   : Prints a string to stderr.
 * COMMENTS  : 
 *****************************************************************************)
let reportError s = 
  (prerr_string (binary ^ ": " ^ s); 
   prerr_newline());;

(*****************************************************************************
 * FUNCTION  : [main()] is the main function of the ray tracer. It reads
 *           : necessary input (command line options and a scene description-
 *           : file) and, if possible, produces a file (in PPM-format) with
 *           : the ray traced image.
 * COMMENTS  : 
 *****************************************************************************)
let main() =
  (* Play with GC parameters a little... *)
  let gc           = Gc.get() in 
  let _            = gc.Gc.space_overhead <- 200 in 
  let _            = Gc.set gc in
  
  (* Read command line arguments and extract values read *)
  let opts         = Options.parse() in
  let createCamera = Options.camera opts in
  let createTracer = Options.tracer opts in
  let outputFile   = Options.filename opts in
  let args         = Options.toString opts in
  let traceSimple  = Options.traceSimple opts in

  (* Parse povray file and referenced bitmaps *)
  let lexbuffer    = Lexing.from_channel stdin in
  let lexer        = Povlexer.token in
  let povParseTree = Povparser.scene lexer lexbuffer in  

  (* Get camera and tracer to use *)
  let scene        = Povparsetree.scene povParseTree (not(traceSimple)) in
  let camera       = createCamera (Povparsetree.camera povParseTree) in
  let tracer       = createTracer Tracer.create in
  let trace        = Tracer.trace tracer in
  
  (* Create and start timer, trace the image *)
  let timer        = Timer.create() in
  let timer        = Timer.reset timer in
  let bitmap       = Camera.takePicture camera trace scene in

  (* Stop timer and print time elapsed if wanted *)
  let timeStr      = string_of_int(Timer.elapsed timer) in
  let _ =  if Options.showTime opts then
    print("Tracetime: " ^ timeStr ^ " ms\n") in

  (* Write the resulting bitmap to file *)
  let bInfo        = [" Created by: " ^ creator;
		      " Tracer: " ^ copyright;
		      " Options used: " ^ args;
		      " Tracetime: " ^ timeStr ^ " ms"] in
  let bDepth       = Ppm.defaultColorDepth in
  let bType        = Ppm.defaultOutputFormat in
  let _ = Ppm.writeFile outputFile bInfo bDepth bType bitmap in
  ();;

(*****************************************************************************
 * FUNCTION  : [run()] runs the tracer (calls main) and if any exception is
 *           : raised it is hooked here and the tracer is exited gracefully
 *           : by printing a suitable error message.
 * COMMENTS  : 
 *****************************************************************************)
let run() = 
  try (* Run program by calling main() *)
    main()
  with (* Hook any exception raised *)
  (* Input/external errors. *)
    Error.IO(m, reason) -> 
      reportError(m ^ ": " ^ reason);
      exit 1
  | Error.Error(m, reason) -> 
      reportError(m ^ ": " ^ reason);
      exit 1
  | Options.OptionsError reason ->
      reportError reason;
      exit 1
  | Povlexer.LexicalError reason -> 
      reportError("scene: lexical error - " ^ reason);
      exit 1
  | Povparsetree.SemanticError reason -> 
      reportError("scene: semantic error - " ^ reason);
      exit 1
  | Parsing.Parse_error -> 
      reportError "scene: syntax error";
      exit 1
  (* Errors intentionally raised by tracer *)
  | Error.Failure (location, reason) ->
      reportError ("Internal error: " ^ location ^ ": " ^ reason);
      exit 2
  | Error.Domain (location, reason) ->
      reportError ("Internal error: " ^ location ^ ": " ^ reason);
      exit 2
  (* Any other error is cought here. Something seriously wrong *)
  | x ->
      reportError ("Internal error (uncaught exception): " ^
		  (Printexc.to_string x));
      exit 3;;
      
(*****************************************************************************
 * Starting point of execution; launch the raytracer 
 *****************************************************************************)
run();;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
