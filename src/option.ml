(*****************************************************************************
 * FILE      : option.ml
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * CREATED   : 1998-11-29
 * EDITED    : 1999-01-31
 * CONTENTS  : Implementation of datatype for lifted values.
 * HISTORY   : -
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : ['a option] is the representation of ADT Timer.
 * COMMENTS  : 
 *****************************************************************************)
type 'a option = NONE | SOME of 'a;;

(*****************************************************************************
 * FUNCTION  : [isSome] is public, see interface (option.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let isSome = function
    SOME x -> true
  | NONE   -> false;;

(*****************************************************************************
 * FUNCTION  : [valOf] is public, see interface (option.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let valOf = function
    SOME x -> x
  | NONE   -> Error.domain "Option.valOf" "No lifted value";;

(*****************************************************************************
 * FUNCTION  : [getOpt] is public, see interface (option.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let getOpt d o =
  match (d, o) with
    (d, NONE) -> d
  | (_, SOME x) -> x;;

(*****************************************************************************
 * FUNCTION  : [min|max] is public, see interface (option.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let min x y =
  match (x, y) with
    (SOME x, SOME y) ->
      if  x < y then
      	SOME x
      else
      	SOME y
  | _ -> NONE
	
let max x y =
  match (x, y) with
    (NONE, NONE) -> NONE
  | (SOME x, NONE) -> SOME x
  | (NONE, SOME y) -> SOME y
  | (SOME x, SOME y) ->
    if  x > y then
      SOME x
    else
      SOME y;;
	
(*****************************************************************************
 * End of file.
 *****************************************************************************)
