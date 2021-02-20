(*****************************************************************************
 * FILE      : scene.mli
 * CONTENTS  : Interface of module Scene.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:20:23 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Light
open Shape
open Color
open Ray
open Hitpoint
open Option
open Vector
  
(*****************************************************************************
 * ABSTYPE   : [scene] represents a scene to (ray)trace.
 *****************************************************************************)
type scene

(*****************************************************************************
 * CONSTANT  : [defaultBackground] is the suggested default value for
 *           : background.
 *****************************************************************************)
val defaultBackground : color
      
(*****************************************************************************
 * FUNCTION  : [create ll sl bc] creates a world with lights ll, shapes sl 
 *           : and background color bc.
 *****************************************************************************)
val create : light list -> shape list -> color -> scene
    
(*****************************************************************************
 * FUNCTION  : [hitPoint s r] sends the ray r into scene s and returns 
 *           : (SOME hp) where hp is the resulting hit point (the closest one) 
 *           : if the ray intersects an object. If not, NONE is returned.
 *****************************************************************************)
val hitPoint : scene -> ray -> hitpoint option

(*****************************************************************************
 * FUNCTION  : [intensity s hp] returns the intensity at hit point hp in scene 
 *           : s.
 *****************************************************************************)
val intensity : scene -> hitpoint -> float;;

(*****************************************************************************
 * FUNCTION  : [background s] returns the background color of scene s. 
 *****************************************************************************)
val background : scene -> color
									      
(*****************************************************************************
 * FUNCTION  : [toString s] returns a string representation of s. 
 *****************************************************************************)
val toString : scene -> string

(*****************************************************************************
 * End of file
 *****************************************************************************)
