(*****************************************************************************
 * FILE      : surface.mli
 * CONTENTS  : Interface of module Surface.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:55:50 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Pigment
open Finish

(*****************************************************************************
 * ABSTYPE   : [surface] represents a surface of an object. The properties of 
 *           : a surface is its base color, pigment, and its finish.
 *****************************************************************************)
type surface
      
(*****************************************************************************
 * FUNCTION  : [create p f] returns a surface with pigment p and finish f. 
 *****************************************************************************)
val create : pigment -> finish -> surface

(*****************************************************************************
 * FUNCTION  : [pigment s] returns the pigment of surface s. 
 *****************************************************************************)
val pigment : surface -> pigment

(*****************************************************************************
 * FUNCTION  : [finish s] returns the finish of surface s.
 *****************************************************************************)
val finish : surface -> finish

(*****************************************************************************
 * End of file
 *****************************************************************************)
