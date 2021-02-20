(*****************************************************************************
 * FILE      : sphere.ml
 * CONTENTS  : Implementation of module Sphere.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:17:22 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * DATATYPE  : [sphere] is the representation of ADT Sphere.
 * COMMENTS  : 
 *****************************************************************************)
type sphere =
  {
    intersection : (Ray.ray -> float option);
    hitpoint     : (Ray.ray -> float -> Hitpoint.hitpoint)
  };;

(*****************************************************************************
 * CONSTANT  : [default*] are public, see interface (sphere.mli) for
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultPole = Vector.yVector;;
let defaultEquator = Vector.xVector;;
    
(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (sphere.mli) for description.
 * COMMENTS  : The function locally defines the intersection- and hit point-
 *           : functions.
 *****************************************************************************)
let create center radius pole equator surface =
  let sqr x = x *. x in

  (* These can be calculated directly  *)
  let srInv = 1.0 /. radius in
  let sr2 = sqr radius in

  (* rayIntersects *)
  (* The function to tell if ray intersects an object *)
  let rayIntersects ray =
    let oc = Vector.sub center (Ray.origin ray) in
    let l2oc = Vector.dot oc oc in
    let tca = Vector.dot oc (Ray.direction ray) in
    if l2oc < sr2 then
      (* Inside sphere, ie hit *)
      let t2hc = sr2 -. l2oc +. sqr(tca) in
      SOME(tca +. sqrt(t2hc))
    else
      (* Outside sphere, possibly a hit *)
      if tca < 0.0 then
	NONE
      else
	let t2hc = sr2 -. l2oc +. sqr(tca) in
  	if t2hc < 0.0 then
	  NONE
	else
	  SOME(tca -. sqrt(t2hc))
  in

  (* hitPoint *)
  (* The function to calculate the hit point (data) *)
  let hitPoint ray rd =
    let oc = Vector.sub center (Ray.origin ray) in
    let l2oc = Vector.dot oc oc in 
    let tca = Vector.dot oc (Ray.direction ray) in
    let inside = l2oc < sr2 in
    let ri = Vector.add (Ray.origin ray)
	(Vector.scale (Ray.direction ray) rd) in
    let rn = Vector.scale (Vector.sub ri center) srInv in
    let rn =
      if inside then
	Vector.negate rn
      else
	rn in
    if Pigment.isColor(Surface.pigment surface) then
      let color = Pigment.color(Surface.pigment surface) in
      Hitpoint.create ri rn rd color (Surface.finish surface)
    else
      let phi = acos(Vector.dot (Vector.negate rn) pole) in
      let v = phi /. Math.pi in
      let theta = (acos(Vector.dot equator rn) /. sin(phi)) /. Math.pi2 in
      let u =
	if Vector.dot (Vector.cross equator pole) rn > 0.0 then
	  theta
	else
	  1.0 -. theta in
      let color = Pigment.colorUV (Surface.pigment surface) u v in
      Hitpoint.create ri rn rd color (Surface.finish surface)
  in

  (* Return the sphere *)
  {
    intersection = rayIntersects;
    hitpoint = hitPoint
  };;
    
(*****************************************************************************
 * FUNCTION  : [rayIntersects] is public, see interface (sphere.mli) for 
 *           : description.
 * COMMENTS  : See 'create' for implementation.
 *****************************************************************************)
let rayIntersects s = s.intersection;;

(*****************************************************************************
 * FUNCTION  : [hitPoint] is public, see interface (sphere.mli) for 
 *           : description.
 * COMMENTS  : See 'create' for implementation.
 *****************************************************************************)
let hitPoint s = s.hitpoint;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
