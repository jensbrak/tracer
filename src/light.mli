(*****************************************************************************
 * FILE      : light.mli
 * CONTENTS  : Interface of ADT light
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:37:39 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector

(*****************************************************************************
 * ABSTYPE   : [light] represents a light source. Lights are virtual; they
 *           : are invisible points in space. An object is illuminated if 
 *           : there are no obstacles in between.
 *****************************************************************************)
type light

(*****************************************************************************
 * FUNCTION  : [create p] returns a light source at position p.
 *****************************************************************************)
val create : vector -> light

(*****************************************************************************
 * FUNCTION  : [position l] returns the position of light source l. 
 *****************************************************************************)
val position : light -> vector

(*****************************************************************************
 * End of file
 *****************************************************************************)
