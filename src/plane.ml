(*****************************************************************************
 * FILE      : plane.ml
 * CONTENTS  : Implementation of module Plane.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 16:06:01 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option

(*****************************************************************************
 * DATATYPE  : [plane] is the representation of ADT Plane.
 * COMMENTS  : 
 *****************************************************************************)
type plane =
  {
    intersection : (Ray.ray -> float option);
    hitpoint     : (Ray.ray -> float -> Hitpoint.hitpoint)
  };;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (plane.mli) for description.
 * COMMENTS  : The function locally defines the intersection- and hit point-
 *           : functions.
 *****************************************************************************)
let create normal distance surface =
  (* Assure that the pigment is not of type bitmap *)
  (* NOTE: Should this be tested elsewhere? *)
  if not(Pigment.isColor(Surface.pigment surface)) then
    Error.domain "Plane.create" 
                  "Bitmap projection on infinite plane not supported" 
  else
    let normal = Vector.normalize normal in

    (* rayIntersects *)
    (* The function to tell if ray intersects an object *)
    let rayIntersects ray =
      let vd = Vector.dot normal (Ray.direction ray) in
      if vd = 0.0 then
      (* Ray parallel to plane, ie no hit *)
      	NONE
      else
      (* Not parallel, check if plane is intersected *)
      	let v0 = distance -. (Vector.dot normal (Ray.origin ray)) in
      	let rd = v0 /. vd in
      	if rd < 0.0 then
	(* Intersection behind camera, ie no hit *)
	  NONE
      	else
	  SOME rd
    in

    (* hitPoint *)
    (* The function to calculate the hit point (data) *)
    let hitPoint ray rd =
      let vd = Vector.dot normal (Ray.direction ray) in
      let rn = if vd < 0.0 then normal else Vector.negate normal in
      let ri = 
      	Vector.add (Ray.origin ray) (Vector.scale (Ray.direction ray) rd) in
        (* The pigment is only a single color, get it and return hit point *) 
      let color = (Pigment.color(Surface.pigment surface)) in
      Hitpoint.create ri rn rd color (Surface.finish surface)
    in
    
  (* Return the plane *)
  {
    intersection = rayIntersects;
    hitpoint = hitPoint
  };;
 
(*****************************************************************************
 * FUNCTION  : [createPoint] is public, see interface (plane.mli) for 
 *           : description.
 * COMMENTS  :  
 *****************************************************************************)
let createPoint point normal surface =
  let distance = Vector.dot point (Vector.normalize normal) in
  create normal distance surface;;

(*****************************************************************************
 * FUNCTION  : [rayIntersects] is public, see interface (plane.mli) for 
 *           : description.
 * COMMENTS  : See 'create' for implementation.
 *****************************************************************************)
let rayIntersects p = p.intersection;;

(*****************************************************************************
 * FUNCTION  : [hitPoint] is public, see interface (plane.mli) for description.
 * COMMENTS  : See 'create' for implementation.
 *****************************************************************************)
let hitPoint p = p.hitpoint;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
