(*****************************************************************************
 * FILE      : hitpoint.ml
 * CONTENTS  : Implementation of module Hitpoint.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:35:27 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [hitpoint] is the representation of ADT Hitpoint.
 * COMMENTS  : 
 *****************************************************************************)
type hitpoint =
    {
     point    : Vector.vector;  (* Intersection point *)
     normal   : Vector.vector;  (* The surface normal at intersection *)
     distance : float;          (* Distance from intersection to ray origin *)
     color    : Color.color;    (* Raw color of intersected surface *)
     finish   : Finish.finish   (* Finish of intersected surface *)
   } ;;

(*****************************************************************************
 * CONSTANT  : [eps] is the distance to move the hit point along the normal.
 * COMMENTS  : Should depend on machine eps? Choosed value seems to work ok.
 *****************************************************************************)
let eps = 0.0001;;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (hitpoint.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let create p n d c f =
  (* Move the hit point along normal a bit to avoid floating point errors *)
  let p' = Vector.add p (Vector.scale n eps) in
  {
    point = p';
    normal = n;
    distance = d;
    color = c;
    finish = f
  };;

(*****************************************************************************
 * FUNCTION  : [point] is public, see interface (hitpoint.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let point hp = hp.point;;

(*****************************************************************************
 * FUNCTION  : [normal] is public, see interface (hitpoint.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let normal hp = hp.normal;;

(*****************************************************************************
 * FUNCTION  : [distance] is public, see interface (hitpoint.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let distance hp = hp.distance;;

(*****************************************************************************
 * FUNCTION  : [color] is public, see interface (hitpoint.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let color hp = hp.color;;

(*****************************************************************************
 * FUNCTION  : [finish] is public, see interface (hitpoint.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let finish hp = hp.finish;;

(*****************************************************************************
 * FUNCTION  : [illumination] is public, see interface (hitpoint.mli) for 
 *           : description.
 * ALGORITHM : 0. sd = normalize(lo - ri)
 *           : 1. cosPhi = | rn . sd |
 * COMMENTS  : 
 *****************************************************************************)
let illumination hp p =
  let ri = hp.point in
  let rn = hp.normal in
  let sd = Vector.normalize(Vector.sub p ri) in
  let cosPhi = abs_float(Vector.dot rn sd) in
  cosPhi;;
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
