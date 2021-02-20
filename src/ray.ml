(*****************************************************************************
 * FILE      : ray.ml 
 * CONTENTS  : Implemenation of module Ray
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * CREATED   : Time-stamp: <2000-01-06 12:56:52 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [ray] is the representation of ADT Ray.
 * COMMENTS  : 
 *****************************************************************************)
type ray =
  {
    origin    : Vector.vector;   (* Starting point of ray *)
    direction : Vector.vector;   (* And its direction *)
  } 

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (ray.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create origin direction = 
  {
    origin = origin;
    direction = direction
  } ;;

(*****************************************************************************
 * FUNCTION  : [origin] is public, see interface (ray.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let origin r = r.origin;;

(*****************************************************************************
 * FUNCTION  : [direction] is public, see interface (ray.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let direction r = r.direction;;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
