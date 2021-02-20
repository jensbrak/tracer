(*****************************************************************************
 * FILE      : progress.ml
 * CONTENTS  : Implementation of module Progress
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-02-15 13:28:19 jenso>
 * COMMENTS  : 
 *****************************************************************************)

let print oc s = 
  (output_string oc s;
   flush oc);;

let deleteString n = 
  "\027[" ^ (string_of_int n)^ "D\027[K";;

let moveLeftString n =
  "\027[" ^ (string_of_int n) ^ "D";;

(*****************************************************************************
 * DATATYPE  : ['a progressIndicator] is the representation of the general
 *           : progress indicator.
 * COMMENTS  : 
 *****************************************************************************)
type 'a progressIndicator = 
    {
      oc : out_channel;
      preFun : ('a -> string);
      postFun : ('a -> string);
      increaseFun : ('a -> 'a);
      mutable state : 'a
    } ;;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (progress.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let create outChannel preFun postFun increaseFun initalState = 
  { oc = outChannel;
    preFun = preFun;
    postFun = postFun;
    increaseFun = increaseFun;
    state = initalState
  } ;;

(*****************************************************************************
 * FUNCTION  : [update] is public, see interface (progress.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let update p = 
  (print p.oc (p.preFun (p.state));
   p.state <- p.increaseFun (p.state);
   print p.oc (p.postFun (p.state))
  ) ;;

(*****************************************************************************
 * Predefined progress indicators. Their implementations are described in 
 *   general in the interface and is not documented here.
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [spinner] is the possible states a spinner can have.
 * COMMENTS  : 
 *****************************************************************************)
type spinner =
   HORIZONTAL | VERTICAL | DESCENDING | ASCENDING;;

(*****************************************************************************
 * DATATYPE  : [progress] represents a number of predefined progress
 *           : indicators.
 * COMMENTS  : 
 *****************************************************************************)
type progress =
    SPINNER of spinner progressIndicator
  | COUNTER of (int * string * int) progressIndicator
  | PERCENT of (float * float) progressIndicator
  | BAR of (int * int * char * int) progressIndicator;;
    
(*****************************************************************************
 * Spinner: The state is represented by the spinner state (see type spinner).
 *****************************************************************************)
let spinnerIncrease spinner =
  match spinner with
    VERTICAL -> ASCENDING
  | ASCENDING -> HORIZONTAL
  | HORIZONTAL -> DESCENDING
  | DESCENDING -> VERTICAL;;

let spinnerToString spinner =
  match spinner with
    VERTICAL -> "|"
  | ASCENDING -> "/"
  | HORIZONTAL -> "-"
  | DESCENDING -> "\\";;

let spinnerDelete _ = 
  deleteString 1;;

let createSpinner oc = 
  let initState = VERTICAL in
  let s = create oc spinnerDelete spinnerToString spinnerIncrease initState in
  (print oc (spinnerToString initState);
   SPINNER(s));;

(*****************************************************************************
 * Counter: The state is represented by a counter value, a separator string
 *   and a maximum value.
 *****************************************************************************)

let counterIncrease (counter, sep, max) =
  (counter + 1, sep, max);;

let counterToString (counter, sep, max) =
  (string_of_int counter) ^ sep ^ (string_of_int max);;

let counterDelete (counter, sep, max) =
  let s = String.length(string_of_int(counter) ^ sep ^ string_of_int(max)) in
  deleteString s;;

let createCounter oc sep max =
  let initState = (0, sep, max) in
  let c = create oc counterDelete counterToString counterIncrease initState in
  (print oc (counterToString initState);
   COUNTER(c));;

(*****************************************************************************
 * Percent: The state is represented by a counter of current value, and a 
 *  stepsize for each percent.
 *****************************************************************************)

let percentIncrease (now, step) =
  (now +. step, step);;

let percentToString (now, _) =
  (string_of_int (Math.round(now))) ^ "%";;

let percentDelete (now, _) =  
  deleteString (String.length(string_of_int(Math.round(now))) + 1);;

let createPercent oc max =
  let step = 100.0 /. (float(max)) in
  let initState = (0.0, step) in
  let p = create oc percentDelete percentToString percentIncrease initState in
  (print oc (percentToString initState);
   PERCENT(p));;

(*****************************************************************************
 * Bar: The state is represented by a counter of current value, a value 
 *  telling when a character should be printed, a character representing a
 *  bar segment and an actual width (in characters) of the bar.
 *****************************************************************************)
let barIncrease (now, count, sep, width) =
  if now = count then
    (1, count, sep, width)
  else
    (now + 1, count, sep, width);;

let barToString (now, count, sep, _) =
  if now >= count then
    Char.escaped sep
  else
    "";;

let barDelete (_, _, _, _) =
  "";;

let createBar oc max width sep =
  let count = truncate(ceil(float(max) /. float(width - 2))) in
  let realWidth = max / count in
  let initState = (1, count, sep, realWidth + 2) in
  let p = create oc barDelete barToString barIncrease initState in
  (print oc ("[" ^ (String.make (realWidth) ' ') ^ "]");
   print oc (moveLeftString (realWidth + 1));
   BAR(p));;
     
(*****************************************************************************
 * FUNCTION  : [increase] is public, see interface (progress.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let increase progress =
  match progress with
    SPINNER p -> update p
  | COUNTER p -> update p
  | PERCENT p -> update p
  | BAR p -> update p;;

(*****************************************************************************
 * FUNCTION  : [delete] is public, see interface (progress.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let delete progress =
    match progress with
      SPINNER p -> print p.oc (spinnerDelete p.state)
    | COUNTER p -> print p.oc (counterDelete p.state)
    | PERCENT p -> print p.oc (percentDelete p.state)
    | BAR p -> print p.oc
	  (match p.state with (_, _, _, width) -> deleteString width);;

(*****************************************************************************
 * End of file
 *****************************************************************************)
