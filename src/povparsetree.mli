(*****************************************************************************
 * FILE      : povparsetree.mli
 * CONTENTS  : Interface of module Povparsetree
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-17 13:14:20 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option
open Progress
open Light
open Shape
open Camera
open Color
open Scene

(*****************************************************************************
 * EXCEPTIONS
 *****************************************************************************)
exception SemanticError of string;;

(*****************************************************************************
 * ABSTYPE   : [parsetree] represents a parse tree for a (very) simplified
 *           : PovRay description file.
 *****************************************************************************)
type parsetree 

(*****************************************************************************
 * FUNCTION  : [semanticError s] raises exception SemanticError with string s.
 *****************************************************************************)
val semanticError : string -> 'a

(*****************************************************************************
 * FUNCTION  : [create ()] returns an empty parse tree. 
 *****************************************************************************)
val create : unit -> parsetree

(*****************************************************************************
 * FUNCTION  : [addLight p l] adds a light to parse tree p. 
 * EFFECTS   : Updates (adds) parse tree with a new light.
 *****************************************************************************)
val addLight : parsetree -> light -> unit

(*****************************************************************************
 * FUNCTION  : [addShape p s] adds a shape to parse tree p.
 * EFFECTS   : Updates (adds) parse tree with a new shape.
 *****************************************************************************)
val addShape : parsetree -> shape -> unit

(*****************************************************************************
 * FUNCTION  : [addCamera p c] adds a camera to parse tree p.
 *           : The camera in the parse tree is defined as a function that
 *           : creates a camera; the reason for this is that the properties
 *           : of a camera is read from different places; some from the
 *           : PovRay description file, some from command line. If more than 
 *           : one camera is added, the latest one added is used.
 * EFFECTS   : Updates (adds) parse tree with a camera.
 *****************************************************************************)
val addCamera :
  parsetree ->
    (progress option -> float -> float -> int -> int -> float -> camera) ->
      unit

(*****************************************************************************
 * FUNCTION  : [addBackground p s] adds a background to parse tree p. If no
 *           : no background is added, default background will be used, if
 *           : more than one background is added, the latest one added is used.
 * EFFECTS   : Updates (adds) parse tree with a new background (color).
 *****************************************************************************)
val addBackground : parsetree -> color -> unit

(*****************************************************************************
 * FUNCTION  : [camera p] returns the camera(function) of parse tree p. 
 *           : Raises exception SemanticError if the given parse tree is 
 *           : not valid, ie no camera defined.
 *****************************************************************************)
val camera :
    parsetree ->
      (progress option -> float -> float -> int -> int -> float ->
  	camera)

(*****************************************************************************
 * FUNCTION  : [scene p rl] returns the scene of the parse tree. Raises 
 *           : exception SemanticError if the given parse tree is not valid. 
 *           : If rl (as in Require Lights) is false, quick trace (-q option)
 *           : is done and no light sources are needed. If rl is true, there
 *           : has to be at least one light source.
 * COMMENTS  : It might seem unnecessary to require lights but as the tracer
 *           : has no other means of illuminating a scene it seems meaningless
 *           : to trace a scene without any. 
 *****************************************************************************)
val scene : parsetree -> bool -> scene
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
