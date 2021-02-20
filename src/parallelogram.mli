(*****************************************************************************
 * FILE      : parallelogram.mli
 * CONTENTS  : Interface of module Triangle.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:27:53 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Surface
open Ray
open Option
open Hitpoint

(*****************************************************************************
 * ABSTYPE   : [parallelogram] represents an infinite thin parallelogram. 
 *****************************************************************************)
type parallelogram

(*****************************************************************************
 * FUNCTION  : [create c1 c2 c3 s] returns a parallelogram with corners c1, c2
 *           : and c3 and surface s.
 *****************************************************************************)
val create : vector -> vector -> vector -> surface -> parallelogram

(*****************************************************************************
 * FUNCTION  : [createPoint c sA sB s] returns a parallelogram with corner c 
 *           : and sides sA and sB (counting from corner c) and surface s.
 *****************************************************************************)
val createPoint : vector -> vector -> vector -> surface -> parallelogram

(*****************************************************************************
 * FUNCTION  : [rayIntersects t r] returns (SOME d) if the ray r intersects
 *           : parallelogram t at a distance of d from ray origin. It returns 
 *           : NONE if the ray doesn't intersect the parallelogram.
 *****************************************************************************)
val rayIntersects : parallelogram -> ray -> float option

(*****************************************************************************
 * FUNCTION  : [hitPoint t r] returns the hit point of ray r intersecting 
 *           : parallelogram t. The function assumes that r really intersects 
 *           : t. If not, the result is unspecified.
 *****************************************************************************)
val hitPoint : parallelogram -> ray -> float -> hitpoint

(*****************************************************************************
 * End of file
 *****************************************************************************)
