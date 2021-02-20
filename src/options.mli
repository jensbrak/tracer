(*****************************************************************************
 * FILE      : options.mli
 * CONTENTS  : Interface of module Options.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-17 13:14:12 jenso>
 * COMMENTS  : The command line functionality is:
 *           :   * filename has to be given
 *           :   * parameters controlling camera has to be specified:
 *           :     at least 3 of the -x -y -w -y is required (the zoom -z
 *           :     does not affect proportions in width/height so it is
 *           :     optional): 
 *           :     - If four are given the image may look distorted so a 
 *           :       warning is printed.
 *           :     - If three are given, the fourth is calculated under the 
 *           :       assumption that w/x == h/y.
 *           : There are several ways to deal with the command line arguments 
 *           : defining camera behavior; one way is to use defaults and just
 *           : set the parameters the user specifies. This may result in 
 *           : quite funny pictures if one is not careful. Another way is
 *           : to calculate the fourth if three are given. If two or less
 *           : are given one has to make assumptions (using default values) in
 *           : order to calculate the fourth. A compromise is to require at
 *           : least three and calculate the fourth if needed. This makes it
 *           : rather easy to specify images that doesn't look distorted.
 *****************************************************************************)
open Progress
open Option
open Camera
  
(*****************************************************************************
 * ABSTYPE   : [options] represents the options read from command line. 
 *           : Options are optional arguments to the tracer, mainly controlling
 *           : the behavior of the tracer and the bitmap it produces.
 *****************************************************************************)
type options 

exception OptionsError of string

(*****************************************************************************
 * FUNCTION  : [parse()] parses the command line and creates an options 
 *           : structure of the parsed data. Error checking is done to ensure
 *           : that correct command line parameters are given. Raises
 *           : exception OptionsError if not valid camera options was 
 *           : specified. If options are unknown or misused a warning is
 *           : printed and the program exited.
 * EFFECTS   : Parses the command line. Possibly prints error message to
 *           : stderr.
 *****************************************************************************)
val parse : unit -> options

(*****************************************************************************
 * FUNCTION  : [showTime o] returns true of options o is set to show time, 
 *           : false otherwise.
 *****************************************************************************)
val showTime : options -> bool

(*****************************************************************************
 * FUNCTION  : [traceSimple o] returns true of options o is set to use simple
 *           : tracing, false otherwise.
 *****************************************************************************)
val traceSimple : options -> bool

(*****************************************************************************
 * FUNCTION  : [camera o c] returns the camera of options o and camera 
 *           : creation function c. 
 *****************************************************************************)
val camera : options ->
  (progress option -> float -> float -> int -> int -> float -> 'a) -> 'a 

(*****************************************************************************
 * FUNCTION  : [tracer o t] returns the tracer of options i and tracer 
 *           : creation function t. 
 *****************************************************************************)
val tracer : options -> (int -> bool -> 'a) -> 'a

(*****************************************************************************
 * FUNCTION  : [filename o] returns the filename held by options o. 
 *****************************************************************************)
val filename : options -> string

(*****************************************************************************
 * FUNCTION  : [toString o] returns a string representation of options o, 
 *           : that is, a string with the arguments that was used by to call
 *           : the program with.
 *****************************************************************************)
val toString : options -> string
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
