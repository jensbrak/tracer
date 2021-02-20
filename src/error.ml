(*****************************************************************************
 * FILE      : error.ml
 * CONTENTS  : Implementation of module Error.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:24:37 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * EXCEPTIONS 
 *****************************************************************************)
exception Failure of string * string;;
exception Domain of string * string;;
exception Error of string * string;;
exception IO of string * string;;

(*****************************************************************************
 * FUNCTION  : [failure l r] raises exception Failure with string l describing
 *           : the location (preferably file, function and clause) of the 
 *           : failure and string r describing the reason.
 *           : Failure occurs when an unexpected error is encountered.
 * COMMENTS  : 
 *****************************************************************************)
let failure location reason = raise(Failure(location, reason));;

(*****************************************************************************
 * FUNCTION  : [domain l r] raises exception Domain with string l describing
 *           : the location (preferably file, function and clause) of the 
 *           : failure and string r describing the reason.
 *           : Domain occurs when a functions is called with an argument 
 *           : outside its domain.
 * COMMENTS  : 
 *****************************************************************************)
let domain location reason = raise(Domain(location, reason));;

(*****************************************************************************
 * FUNCTION  : [error m r] raises exception Error with string m describing the
 *           : the module raising the error and r describing what caused the
 *           : error. Error occurs when the program encounters an error caused 
 *           : externally (ie bad user input and similar).
 * COMMENTS  : 
 *****************************************************************************)
let error m reason = raise(Error(m, reason));;

(*****************************************************************************
 * FUNCTION  : [error m r] raises exception IO with string m describing the
 *           : the mule raising the error and string r describing what
 *           : caused the error. IO occurs when the program encounters an
 *           : IO error (ie error writing/reading a file).
 * COMMENTS  : 
 *****************************************************************************)
let io m reason = raise(IO(m, reason));;

(*****************************************************************************
 * End of file
 *****************************************************************************)
