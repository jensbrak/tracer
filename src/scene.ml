(*****************************************************************************
 * FILE      : scene.ml
 * CONTENTS  : Implementation of module Scene.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:33:17 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * DATATYPE  : [shape] is the representation of ADT Scene.
 * COMMENTS  : 
 *****************************************************************************)
type scene =
    {
     lights     : Light.light list;  (* The light sources in the scene *)
     shapes     : Shape.shape list;  (* All shapes in the scene *)
     background : Color.color        (* Background color of scene *)
  };;
  
(*****************************************************************************
 * CONSTANT  : [defaultBackground] is public, see interface (scene.mli) for
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultBackground = Color.black;;
    
(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (scene.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create lights shapes background =
  {
    lights = lights;
    shapes = shapes;
    background = background
  };; 

(*****************************************************************************
 * FUNCTION  : [hitPoint] is public, see interface (scene.mli) for description.
 * ALGORITHM : 0. let s denote closest shape so far, and d the distance to it
 *           : 1. s := none, d := inf 
 *           : 2. FOR each shape in the scene
 *           : 3.   test given ray against the current shape
 *           : 4.   IF ray intersects current shape AND distance to it < d 
 *           : 5.   THEN s := current shape, d := distance to current shape
 *           : 6. RETURN hitpoint of closest intersection, if any
 * COMMENTS  : 
 *****************************************************************************)
let hitPoint scene ray = 

  (* Return the closest object intersected by ray *)
  let closest (shape, distance) thisShape =
    let thisDistance = Shape.rayIntersects thisShape ray in
    match (thisDistance, distance) with
      (NONE, NONE) -> (NONE, NONE)
    | (NONE, SOME d) -> (shape, distance)
    | (SOME td, NONE) -> (SOME thisShape, thisDistance)
    | (SOME td, SOME d) ->
	if td < d then
	  (SOME thisShape, thisDistance)
	else
	  (shape, distance)
  in
  let (s, d) = List.fold_left closest (NONE, NONE) scene.shapes in
  if isSome s then
    SOME(Shape.hitPoint (valOf s) ray (valOf d))
  else
    NONE;;

(*****************************************************************************
 * FUNCTION  : [lineIsIntersected sl p1 p2] returns true if the line between 
 *           : points p1 and p2 in scene s is intersected (by an shape in
 *           : list sl), false otherwise.
 * ALGORITHM : 0. r := ray from p2 to p1
 *           : 1. FOR each shape in list of shapes
 *           : 2.   IF r intersects current shape at a distance < |p1-p2| 
 *           : 3.   THEN return true
 *           : 4. return false
 * COMMENTS  : 
 *****************************************************************************)
let lineIsIntersected shapes p1 p2 =
  let line = Vector.sub p1 p2 in
  let distance = Vector.length line in
  let direction = Vector.normalize line in
  let ray = Ray.create p2 direction in
  let shapeIntersected s =
    let hit = Shape.rayIntersects s ray in
    isSome(hit) && distance > valOf hit in
  List.exists shapeIntersected shapes;;
      
(*****************************************************************************
 * FUNCTION  : [intensity] is public, see intreface (scene.mli) for 
 *           : description.
 * ALGORITHM : 0. intensity := 0.0
 *           : 1. FOR each light source in scene
 *           : 2.   IF line between hitpoint and current light not intersected 
 *           : 3.   THEN intensity := intensity + cos phi (intersection angle)
 *           : 4. return intensity
 * COMMENTS  : 
 *****************************************************************************)
let intensity scene hp =
  let shapes = scene.shapes in
  let lights = scene.lights in
  let traceOneLight light =
    let lo = Light.position light in
    if lineIsIntersected shapes lo (Hitpoint.point hp) then
      0.
    else
      Hitpoint.illumination hp lo
  in
  let addIntensity intensitySum light = intensitySum +. traceOneLight light in
  List.fold_left addIntensity 0. lights;;

(*****************************************************************************
 * FUNCTION  : [background] is public, see interface (scene.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let background scene = scene.background;;
    
(*****************************************************************************
 * FUNCTION  : [toString] is public, see interface (scene.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let toString scene = 
  let lightsStr = string_of_int(List.length scene.lights) in
  let shapesStr = string_of_int(List.length scene.shapes) in
  let backgrStr = Color.toString scene.background in 
  "Scene: \n" ^
  "  Number of lights: " ^ lightsStr ^ "\n" ^
  "  Number of shapes: " ^ shapesStr ^ "\n" ^
  "  Background color: " ^ backgrStr ^ "\n";;

(*****************************************************************************
 * End of file
 *****************************************************************************)
