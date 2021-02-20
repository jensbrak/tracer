(*****************************************************************************
 * FILE      : parallelogram.ml
 * CONTENTS  : Implementation of module Parallelogram.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:26:22 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option

(*****************************************************************************
 * DATATYPE  : [parallelogram] is the representation of ADT Parallelogramp.
 * COMMENTS  : 
 *****************************************************************************)
type parallelogram = 
  {
    intersection : (Ray.ray -> float option);
    hitpoint     : (Ray.ray -> float -> Hitpoint.hitpoint)
  };;

(*****************************************************************************
 * FUNCTION  : [createPoint] is public, see interface (parallelogram.mli) for 
 *           : description.
 * COMMENTS  : The function locally defines the intersection- and hit point-
 *           : functions.
 *****************************************************************************)
let createPoint corner sideA sideB surface = 
  (* These can be calculated directly  *)
  let axa = Vector.dot sideA sideA in
  let bxb = Vector.dot sideB sideB in
  let axb = Vector.dot sideA sideB in
  let axaxbxb = axa *. bxb in
  
  let normal = Vector.normalize(Vector.cross sideA sideB) in
  let distance = Vector.dot corner normal in

  (* rayIntersects *)
  (* The function to tell if ray intersects an object *)
  let rayIntersects ray =
    let vd = Vector.dot normal (Ray.direction ray) in
    if vd = 0.0 then
      (* Ray parallel to plane of parallelogram, ie no hit *)
      NONE
    else
      (* Not parallel, check if intersecting parallelogram *)
      let v0 = distance -. Vector.dot normal (Ray.origin ray) in
      let rd = v0 /. vd in
      if rd < 0.0 then
	(* Intersection behind camera, ie no hit *)
	NONE
      else
	(* See if ray intersects within parallelogram bounds *)
	let ri = 
	  Vector.add (Ray.origin ray) (Vector.scale (Ray.direction ray) rd) in
	let q = Vector.sub ri corner in
	let qxa = Vector.dot q sideA in
	let qxb = Vector.dot q sideB in
	let u = (bxb *. qxa -. axb *. qxb) /. (axa *. bxb -. axb *. axb) in
	let v = (qxb -. u *. axb) /. bxb in
	if u >= 0.0 && u <= 1.0 &&
	  v >= 0.0 && v <= 1.0 then
	  SOME rd
	else
	  NONE 
  in

  (* hitPoint *)
  (* The function to calculate the hit point (data) *)
  let hitPoint ray rd =
    let vd = Vector.dot normal (Ray.direction ray) in
    let rn = if vd < 0.0 then normal else Vector.negate normal in
    let ri = 
      Vector.add (Ray.origin ray) (Vector.scale (Ray.direction ray) rd) in
    if Pigment.isColor(Surface.pigment surface) then
      (* The pigment is only a single color, get it and return hit point *) 
      let color = (Pigment.color(Surface.pigment surface)) in
      Hitpoint.create ri rn rd color (Surface.finish surface)
    else
      (* The pigment is a (projected) bitmap, calculate which pixel to get *)
      let q = Vector.sub ri corner in
      let qxa = Vector.dot q sideA in
      let qxb = Vector.dot q sideB in
      let u = (bxb *. qxa -. axb *. qxb) /. (axaxbxb -. axb *. axb) in
      let v = (qxb -. u *. axb) /. bxb in
      let color = Pigment.colorUV (Surface.pigment surface) u v in
      Hitpoint.create ri rn rd color (Surface.finish surface)
  in

  (* Return the parallelogram *)
  {
    intersection = rayIntersects;
    hitpoint = hitPoint
  };;
 
(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (parallelogram.mli) for 
 *           : description.
 * COMMENTS  :  
 *****************************************************************************)
let create corner0 corner1 corner2 surface =
  let sideA = Vector.sub corner1 corner0 in
  let sideB = Vector.sub corner2 corner0 in
  createPoint corner0 sideA sideB surface;;

(*****************************************************************************
 * FUNCTION  : [rayIntersects] is public, see interface (parallelogram.mli) 
 *           : for description.
 * COMMENTS  : See 'createPoint' for implementation.
 *****************************************************************************)
let rayIntersects t = t.intersection;;

(*****************************************************************************
 * FUNCTION  : [hitPoint] is public, see interface (parallelogram.mli) for 
 *           : description.
 * COMMENTS  : See 'createPoint' for implementation.
 *****************************************************************************)
let hitPoint t = t.hitpoint;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
