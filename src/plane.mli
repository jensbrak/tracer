(*****************************************************************************
 * FILE      : plane.mli
 * CONTENTS  : Interface of module Plane.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 13:18:46 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Surface
open Ray
open Option
open Hitpoint

(*****************************************************************************
 * ABSTYPE   : [plane] represents a basic shape: an infinite thin, infinite
 *           : wide plane. 
 *****************************************************************************)
type plane

(*****************************************************************************
 * FUNCTION  : [create p d s] returns a plane with surface s. The position and 
 *           : orientation of the plane is described by the normal of the
 *           : plane and the distance (along the normal) to origo <0, 0, 0>.
 *           : Raises exception Domain if the plane has a bitmap as pigment
 *           : (not supported).
 *****************************************************************************)
val create : vector -> float -> surface -> plane

(*****************************************************************************
 * FUNCTION  : [createPoint p n s] returns a plane with surface s. The point p
 *           : lies somewhere at the plane n is the normal of the plane.
 *****************************************************************************)
val createPoint : vector -> vector -> surface -> plane

(*****************************************************************************
 * FUNCTION  : [rayIntersects p r] returns (SOME d) if the ray r intersects
 *           : plane p at a distance of d from ray origin. It returns NONE
 *           : if the ray doesn't intersect the plane.
 *****************************************************************************)
val rayIntersects : plane -> ray -> float option

(*****************************************************************************
 * FUNCTION  : [hitPoint p r] returns the hit point of ray r intersecting
 *           : plane p. The function assumes that r really intersects p. If
 *           : not, the result is unspecified.
 *****************************************************************************)
val hitPoint : plane -> ray -> float -> hitpoint

(*****************************************************************************
 * End of file
 *****************************************************************************)
