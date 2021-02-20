(*****************************************************************************
 * FILE      : triangle.mli
 * CONTENTS  : Interface of module Triangle.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:12:09 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Surface
open Ray
open Option
open Hitpoint

(*****************************************************************************
 * ABSTYPE   : [triangle] represents an infinite thin triangle. 
 *****************************************************************************)
type triangle

(*****************************************************************************
 * FUNCTION  : [create c1 c2 c3 s] returns a triangle with corners c1, c2 and
 *           : c3 and surface s.
 *****************************************************************************)
val create : vector -> vector -> vector -> surface -> triangle

(*****************************************************************************
 * FUNCTION  : [createPoint c sA sB s] returns a triangle with corner c and 
 *           : sides sA and sB (counting from corner c) and surface s.
 *****************************************************************************)
val createPoint : vector -> vector -> vector -> surface -> triangle

(*****************************************************************************
 * FUNCTION  : [rayIntersects t r] returns (SOME d) if the ray r intersects
 *           : triangle t at a distance of d from ray origin. It returns NONE
 *           : if the ray doesn't intersect the triangle.
 *****************************************************************************)
val rayIntersects : triangle -> ray -> float option

(*****************************************************************************
 * FUNCTION  : [hitPoint t r] returns the hit point of ray r intersecting 
 *           : triangle t. The function assumes that r really intersects t.
 *           : If not, the result is unspecified.
 *****************************************************************************)
val hitPoint : triangle -> ray -> float -> hitpoint

(*****************************************************************************
 * End of file
 *****************************************************************************)
