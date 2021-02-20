(*****************************************************************************
 * FILE      : light.ml 
 * CONTENTS  : Implementation of module Light
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:38:13 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [light] is the representation of ADT Light.x
 * COMMENTS  : Lights are, from now, only points in space.
 *****************************************************************************)
type light =
  {
    position : Vector.vector
  };;
    
(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (light.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create position =
  {
    position = position
  };;

(*****************************************************************************
 * FUNCTION  : [position] is public, see interface (light.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let position l = l.position;;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
