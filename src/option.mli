(*****************************************************************************
 * FILE      : option.mli
 * CONTENTS  : Interface of datatype Option.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:13:32 jenso>
 * COMMENTS  : This datatype is not abstract as it is so basic.
 *           : This datatype is included in the stdlib but rather than 
 *           : extending the existing module, this one is provided, following
 *           : somewhat different naming conventions than in Ocaml.
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : ['a option] is a lifted value, that either is NONE or SOME(x), 
 *           : where x is an arbitrary ML datatype.
 *****************************************************************************)
type 'a option = | NONE | SOME of 'a

(*****************************************************************************
 * FUNCTION  : [isSome(o)] returns true if o is SOME(x) or false if it is 
 *           : NONE.
 *****************************************************************************)
val isSome : 'a option -> bool

(*****************************************************************************
 * FUNCTION  : [valOf(o)] returns the value x if o is SOME(x) otherwise 
 *           : exception Option is raised.
 *****************************************************************************)
val valOf : 'a option -> 'a

(*****************************************************************************
 * FUNCTION  : [getOpt d o] returns x if o is SOME(x) default value d 
 *           : otherwise. 
 *****************************************************************************)
val getOpt : 'a -> 'a option -> 'a

(*****************************************************************************
 * FUNCTION  : [min x y|max x y] returns the smallest/largest of the two 
 *           : given option values, according to the following rules:
 *           : min NONE NONE -> NONE, min SOME(x) NONE -> SOME(x), 
 *           : min NONE SOME(y) -> SOME(y), min SOME(x) SOME(y) -> 
 *           : SOME(min(x, y)). Dual for max.
 *****************************************************************************)
val max : 'a option -> 'a option -> 'a option
val min : 'a option -> 'a option -> 'a option

(*****************************************************************************
 * End of file
 *****************************************************************************)
