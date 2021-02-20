(*****************************************************************************
 * FILE      : shape.mli
 * CONTENTS  : Interface of module Shape.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:35:39 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Surface
open Ray
open Option
open Hitpoint

(*****************************************************************************
 * ABSTYPE   : [shape] is an object in a scene to (ray)trace. The shape can
 *           : be seen as a physical object; it has a shape and some surface
 *           : characteristics. An object can either be a volume (like a
 *           : sphere) or a plane (like a paper). Planes has a spread but no
 *           : thickness. 
 *           : Currently, there are three kind of shapes defined:
 *           : plane:         An infinite plane (with no thickness)
 *           : triangle:      A triangle (with no thickness)
 *           : parallelogram: A parallelogram (with no thickness)
 *           : sphere:        A sphere
 *****************************************************************************)
type shape
      
(*****************************************************************************
 * FUNCTION  : [createTrianglePoint c sA sB s] returns a triangle with corner 
 *           : c and sides sA and sB (counting from corner c) and surface s.
 *****************************************************************************)
val createTrianglePoint : vector -> vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createTriangle c1 c2 c3 s] returns a triangle with corners c1, 
 *           : c2 and c3 and surface s.
 *****************************************************************************)
val createTriangle : vector -> vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createParallelogramPoint c sA sB s] returns a triangle with 
 *           : corner c and sides sA and sB (counting from corner c) and 
 *           : surface s.
 *****************************************************************************)
val createParallelogramPoint : vector -> vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createParallelogram c1 c2 c3 s] returns a triangle with 
 *           : corners c1, c2 and c3 and surface s.
 *****************************************************************************)
val createParallelogram : vector -> vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createSphere c r p e s] creates a sphere with center at 
 *           : position c, radius r and surface s. The pole p and equator e 
 *           : determines where a bitmap should be projected on the sphere.
 *****************************************************************************)
val createSphere : vector -> float -> vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createPlane p d s] returns a plane with surface s. The 
 *           : position and orientation of the plane is described by the 
 *           : normal of the plane and the distance (along the normal) to 
 *           : origo <0, 0, 0>. Raises exception Domain if the plane has a 
 *           : bitmap as pigment (not supported).
 *****************************************************************************)
val createPlane : vector -> float -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [createPlanePoint p n s] returns a plane with surface s. The 
 *           : point p lies somewhere at the plane n is the normal of the 
 *           : plane.Raises exception Domain if the plane has a  bitmap as 
 *           : pigment (not supported).
 *****************************************************************************)
val createPlanePoint : vector -> vector -> surface -> shape

(*****************************************************************************
 * FUNCTION  : [rayIntersects s r] returns (SOME d) if the ray r intersects
 *           : shape s at a distance of d from ray origin. It returns NONE
 *           : if the ray doesn't intersect the shape.
 *****************************************************************************)
val rayIntersects : shape -> ray -> float option

(*****************************************************************************
 * FUNCTION  : [hitPoint s r] returns the hit point of ray r intersecting 
 *           : shape s. The function assumes that r really intersects s.
 *****************************************************************************)
val hitPoint : shape -> ray -> float -> hitpoint

(*****************************************************************************
 * End of file
 *****************************************************************************)
