(*****************************************************************************
 * FILE      : shape.ml
 * CONTENTS  : Implementation of module Shape.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:37:41 jenso>
 * COMMENTS  : 
 *****************************************************************************)
type shape = 
    TRIANGLE of Triangle.triangle    (* Shape of type triangle *)
  | PARALLELOGRAM of Parallelogram.parallelogram (* .. Parallelogram *)
  | SPHERE of Sphere.sphere          (* Shape of type sphere *)
  | PLANE of Plane.plane;;           (* Shape of type plane *)

(*****************************************************************************
 * FUNCTION  : [createTrianglePoint] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createTrianglePoint c sA sB s = 
  TRIANGLE(Triangle.createPoint c sA sB s);;

(*****************************************************************************
 * FUNCTION  : [createTriangle] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createTriangle c1 c2 c3 s = 
  TRIANGLE(Triangle.create c1 c2 c3 s);;

(*****************************************************************************
 * FUNCTION  : [createParallelogramPoint] is public, see interface (shape.mli)
 *           : for description.
 * COMMENTS  : 
 *****************************************************************************)
let createParallelogramPoint c sA sB s = 
  PARALLELOGRAM(Parallelogram.createPoint c sA sB s);;

(*****************************************************************************
 * FUNCTION  : [createParallelogram] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createParallelogram c1 c2 c3 s = 
  PARALLELOGRAM(Parallelogram.create c1 c2 c3 s);;

(*****************************************************************************
 * FUNCTION  : [createSphere] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createSphere c r p e s =
  SPHERE(Sphere.create c r p e s);;

(*****************************************************************************
 * FUNCTION  : [createPlane] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createPlane n d s =
  PLANE(Plane.create n d s);;

(*****************************************************************************
 * FUNCTION  : [createPlanePoint] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createPlanePoint p n s =
  PLANE(Plane.createPoint p n s);;
    
(*****************************************************************************
 * FUNCTION  : [rayIntersects] is public, see interface (shape.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let rayIntersects s = 
  match s with
    TRIANGLE t -> Triangle.rayIntersects t
  | PARALLELOGRAM p -> Parallelogram.rayIntersects p
  | SPHERE s -> Sphere.rayIntersects s
  | PLANE p -> Plane.rayIntersects p;;

(*****************************************************************************
 * FUNCTION  : [hitPoint] is public, see interface (shape.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let hitPoint s = 
  match s with
    TRIANGLE t -> Triangle.hitPoint t 
  | PARALLELOGRAM p -> Parallelogram.hitPoint p 
  | SPHERE s -> Sphere.hitPoint s 
  | PLANE p -> Plane.hitPoint p;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
