(*****************************************************************************
 * FILE      : sphere.mli
 * CONTENTS  : Interface of module Sphere.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:15:35 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Surface
open Ray
open Option
open Hitpoint

(*****************************************************************************
 * ABSTYPE   : [sphere] represents a sphere volume. The sphere has a position
 *           : of its center and a radius. Pole and equator are direction-
 *           : vectors useful for describing how to map a bitmap onto the
 *           : sphere.
 *****************************************************************************)
type sphere

(*****************************************************************************
 * CONSTANT  : [defaultPole] is the suggested default value for pole.
 *****************************************************************************)
val defaultPole : vector

(*****************************************************************************
 * CONSTANT  : [defaultEquator] is the suggested default value for equator.
 *****************************************************************************)
val defaultEquator : vector
    
(*****************************************************************************
 * FUNCTION  : [create c r p e s] creates a sphere with center at position c, 
 *           : radius r and surface s. The pole p and equator e determines
 *           : where a bitmap should be projected on the sphere.
 *****************************************************************************)
val create : vector -> float -> vector -> vector -> surface -> sphere
    
(*****************************************************************************
 * FUNCTION  : [rayIntersects s r] returns (SOME d) if the ray r intersects
 *           : sphere s at a distance of d from ray origin. It returns NONE
 *           : if the ray doesn't intersect the sphere.
 *****************************************************************************)
val rayIntersects : sphere -> ray -> float option

(*****************************************************************************
 * FUNCTION  : [hitPoint s r] returns the hit point of ray r intersecting 
 *           : sphere s. The function assumes that r really intersects s. If
 *           : not, the result is unspecified.
 *****************************************************************************)
val hitPoint : sphere -> ray -> float -> hitpoint

(*****************************************************************************
 * End of file
 *****************************************************************************)
