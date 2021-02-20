(*****************************************************************************
 * FILE      : povparsetree.ml
 * CONTENTS  : Implementation of module Povparsetree.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-17 11:14:15 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * EXCEPTIONS
 *****************************************************************************)
exception SemanticError of string;;  

(*****************************************************************************
 * DATATYPE  : [parsetree] is the representation of ADT Povparsetree.
 * COMMENTS  : 
 *****************************************************************************)
type parsetree =
  {
    mutable camera : (Progress.progress option -> float -> float -> int -> 
      int -> float -> Camera.camera) option;                (* Camera fun *)
    mutable shapes : Shape.shape list;                      (* Shapes *)
    mutable lights : Light.light list;                      (* Lights *)
    mutable background : Color.color;                       (* Background *)
  } 

(*****************************************************************************
 * FUNCTION  : [semanticError]  is public, see interface (povparsetree.mli)  
 *           : for description.
 * COMMENTS  : 
 *****************************************************************************)
let semanticError s = raise(SemanticError(s));;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let create() =
  {
    camera = NONE;
    shapes = [];
    lights = [];
    background = Scene.defaultBackground
  } ;;

(*****************************************************************************
 * FUNCTION  : [addLight] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let addLight p l =
  p.lights <- l :: p.lights;;

(*****************************************************************************
 * FUNCTION  : [addShape] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let addShape p s =
  p.shapes <- s :: p.shapes;;

(*****************************************************************************
 * FUNCTION  : [addCamera] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let addCamera p c =
  p.camera <- SOME(c);;

(*****************************************************************************
 * FUNCTION  : [addBackground] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let addBackground p b =
  p.background <- b;;

(*****************************************************************************
 * FUNCTION  : [camera] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let camera p = 
  if isSome p.camera then
    valOf p.camera
  else
    semanticError "no camera defined";;

(*****************************************************************************
 * FUNCTION  : [scene] is public, see interface (povparsetree.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let scene p requireLights = 
  let null l =
    match l with
      [] -> true
    | _  -> false
  in
  if not(requireLights && null p.lights) then
    Scene.create p.lights p.shapes p.background
  else
    semanticError "no light sources defined (or -q option not given)";;
 
(*****************************************************************************
 * End of file
 *****************************************************************************)
