(*****************************************************************************
 * FILE      : tracer.ml
 * CONTENTS  : Implementation of module Tracer.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 12:11:11 jenso>
 * COMMENTS  : I will rewrite this module; the way the shading is done is
 *           : quite limited. The recursive ray tracing function is not
 *           : tail recursive. Would it be faster if it was?
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * CONSTANT  : [tracer] is the representation of ADT Tracer.
 * COMMENTS  : 
 *****************************************************************************)
type tracer =
  {
    trace : (Scene.scene -> Ray.ray -> Color.color)
  };;

(*****************************************************************************
 * CONSTANT  : [default*] are public, see interface (tracer.mli) for
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultTraceSimple = false;;
let defaultReflectionDepth = 5;;

(*****************************************************************************
 * FUNCTION  : [reflectedRay r hp] calculates the ray reflected when ray r
 *           : hits hit point hp.
 * COMMENTS  : 
 *****************************************************************************)
let reflectedRay ray hp =
  let ri = Hitpoint.normal hp in
  let rd = Ray.direction ray in
  let dir = Vector.sub rd (Vector.scale (Vector.scale ri 2.0)
			     (Vector.dot ri rd)) in
  Ray.create (Hitpoint.point hp) dir;;

(*****************************************************************************
 * FUNCTION  : [traceRayBasic s r] traces ray r through scene s using 
 *           : an extremely simplified technique.
 * ALGORITHM : 0. Send ray r into scene s, resulting in a hit point hp, 
 *           : 1. IF r intersects an object
 *           : 2. THEN return color of hit point scaled by angle between
 *           :      intersecting ray and hit point normal
 *           : 3. ELSE return background color
 * COMMENTS  : 
 *****************************************************************************)
let traceRayBasic scene ray = 
  let traceIlluminationBasic ray hp =
    let lo = Ray.origin ray in
    let angle = Hitpoint.illumination hp lo in
    Color.scale (Hitpoint.color hp) angle
  in
  let hp = Scene.hitPoint scene ray in
  if isSome hp then
    traceIlluminationBasic ray (valOf hp)
  else
    Scene.background scene;;

(*****************************************************************************
 * FUNCTION  : [traceRay rd s r] traces ray r in scene s, with a reflection 
 *           : depth of rd. This means that a ray may bounce up to rd times
 *           : before the final color is determined.
 * ALGORITHM : 0. h := hitpoint given by tracing ray r into scene s
 *           : 1. IF intersection occured 
 *           : 2. THEN c := intersection color scaled by intensity sum of all
 *           : 3.   contributing light sources (based on intersection angle)
 *           : 4.   IF rd < max reflextions and intersected shape is reflective
 *           : 5.   THEN rc := trace a reflection ray recursively, scale by 
 *           : 6.     reflection constant of currently intersected shape
 *           : 7.     return c + rc
 *           : 8.   ELSE return c
 *           : 9. ELSE return background color
 * COMMENTS  : 
 *****************************************************************************)
let rec traceRay recLevel scene ray =
  let hpOpt = Scene.hitPoint scene ray in
  if isSome hpOpt then
    (* Get hit point and its properties *)
    let hitpoint           = valOf hpOpt in
    let reflectionConstant = Finish.reflection(Hitpoint.finish hitpoint) in
    let diffuseConstant    = Finish.diffuse(Hitpoint.finish hitpoint) in
    let baseColor          = Hitpoint.color hitpoint in

    (* Calculate light source contribution *)
    let intensity          = Scene.intensity scene hitpoint in
    let diffuseColor       = Color.scale baseColor intensity in

    (* If we've done max reflections or there's no reflection, we're done *)
    if recLevel = 0 || reflectionConstant = 0.0 then
      diffuseColor
    else
      (* We have reflection, calculate reflection contribution *)
      let reflectionRay = reflectedRay ray hitpoint in
      let reflectionColor = traceRay (recLevel - 1) scene reflectionRay in
      Color.add diffuseColor (Color.scale reflectionColor reflectionConstant)
  else
    Scene.background scene;;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (tracer.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create recDepth simple =
  {
    trace = if simple then traceRayBasic else traceRay recDepth
  };;
    
(*****************************************************************************
 * FUNCTION  : [trace] is public, see interface (tracer.mli) for description.
 * COMMENTS  : See 'traceRay' or 'traceRayBasic' for implementation.
 *****************************************************************************)
let trace t = t.trace;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
