(*****************************************************************************
 * FILE      : hitpoint.mli
 * CONTENTS  : Interface of module Hitpoint.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:32:38 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Color
open Finish

(*****************************************************************************
 * ABSTYPE   : [hitpoint] represents a hit point in ray tracing calculations. 
 *           : A hit point is the point at a surface of an object intersected
 *           : by a ray. The properties of the hit point is related to the
 *           : ray intersecting the surface and the surface properties of
 *           : the object intersected.
 *****************************************************************************)
type hitpoint

(*****************************************************************************
 * FUNCTION  : [create p n d c f] returns a hit point at position p (position
 *           : of intersection), with normal n (relative to the position),   
 *           : with distance d (from origin of ray), color c (color at 
 *           : intersection point of the intersected object) and finish f of
 *           : the object. The position of the hit point is moved a little bit
 *           : along the normal to compensate floating point inaccuracy.
 *****************************************************************************)
val create : vector -> vector -> float -> color -> finish -> hitpoint

(*****************************************************************************
 * FUNCTION  : [point h] returns the position of the hit point h.
 *****************************************************************************)
val point : hitpoint -> vector

(*****************************************************************************
 * FUNCTION  : [normal h] returns the normal of the hit point h.
 *****************************************************************************)
val normal : hitpoint -> vector

(*****************************************************************************
 * FUNCTION  : [distance h] returns the distance of the hit point h.
 *****************************************************************************)
val distance : hitpoint -> float

(*****************************************************************************
 * FUNCTION  : [color h] returns the color at the hit point h. 
 *****************************************************************************)
val color : hitpoint -> color

(*****************************************************************************
 * FUNCTION  : [finish h] returns the finish of the hit point h. 
 *****************************************************************************)
val finish : hitpoint -> finish

(*****************************************************************************
 * FUNCTION  : [illumination hp p] returns grade of illumination at hitpoint 
 *           : hp based on the angle of intersection between hp and origin p.
 *****************************************************************************)
val illumination : hitpoint -> vector -> float

(*****************************************************************************
 * End of file
 *****************************************************************************)
