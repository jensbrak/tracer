(*****************************************************************************
 * FILE      : vector.ml
 * CONTENTS  : Implementation of module Vector.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 12:55:57 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [vector] is the representation of ADT Vector.
 * COMMENTS  : Records with floats are handled more efficient by the compiler.
 *****************************************************************************)
type vector = {x : float; y : float; z : float};;

(*****************************************************************************
 * CONSTANTS : [*] are some usual vector constants.
 * COMMENTS  : 
 *****************************************************************************)
let zeroVector = {x = 0.0; y = 0.0; z = 0.0};;
let xVector    = {x = 1.0; y = 0.0; z = 0.0};;
let yVector    = {x = 0.0; y = 1.0; z = 0.0};;
let zVector    = {x = 0.0; y = 0.0; z = 1.0};;

(*****************************************************************************
 * CONSTANT  : [normalizeTolerance] is the tolerance when judging if a 
 *           : vector is normalized.
 * COMMENTS  : Right now the value used is 'small' and 'arbritrary'. Should 
 *           : depend on machine-epsilon (?). 
 *****************************************************************************)
let normalizeTolerance = 0.000001;;

(*****************************************************************************
 * CONSTANT  : [orthogonalTolerance] is the tolerance when judging if two 
 *           : vectors are orthogonal.
 * COMMENTS  : Right now the value used is 'small' and 'arbritrary'. Should 
 *           : depend on machine-epsilon (?). 
 *****************************************************************************)
let orthogonalTolerance = 0.000001;;
    
(*****************************************************************************
 * FUNCTION  : [x|y|z] are public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let x v = v.x;;
let y v = v.y;;
let z v = v.z;;
    
(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create x y z = {x = x; y = y; z = z};;

(*****************************************************************************
 * FUNCTION  : [toString] is public, see interface (vector.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let toString v =
  let convert = string_of_float in
  let prefix = "<" in
  let suffix = ">" in
  let sep = ", " in
  prefix ^ convert v.x ^ sep ^ convert v.y ^ sep ^ convert v.z ^ suffix;;
							     
(*****************************************************************************
 * FUNCTION  : [dot] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let dot v1 v2 = 
  v1.x *. v2.x +. v1.y *. v2.y +. v1.z *. v2.z;;
    
(*****************************************************************************
 * FUNCTION  : [cross] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let cross v1 v2 = 
  let x = v1.y *. v2.z -. v1.z *. v2.y in
  let y = v1.z *. v2.x -. v1.x *. v2.z in
  let z = v1.x *. v2.y -. v1.y *. v2.x in
  {x = x; y = y; z = z};;
    
(*****************************************************************************
 * FUNCTION  : [add] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let add v1 v2 = 
  {x = v1.x +. v2.x; y = v1.y +. v2.y; z = v1.z +. v2.z};;
 
(*****************************************************************************
 * FUNCTION  : [sub] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let sub v1 v2 =
  {x = v1.x -. v2.x; y = v1.y -. v2.y; z = v1.z -. v2.z};;

(*****************************************************************************
 * FUNCTION  : [mult] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let mult v1 v2 =
  {x = v1.x *. v2.x; y = v1.y *. v2.y; z = v1.z *. v2.z};;

(*****************************************************************************
 * FUNCTION  : [scale] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let scale v s = 
  {x = v.x *. s; y = v.y *. s; z = v.z *. s};;
    
(*****************************************************************************
 * FUNCTION  : [length] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let length v = 
  sqrt(dot v v);;

(*****************************************************************************
 * FUNCTION  : [normalize] is public, see interface (vector.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let normalize v = 
  let l = length v in
  if l = 0.0 then
    Error.domain "Vector.normalize" "zero vector"
  else
    scale v (1.0 /. l);;
    
(*****************************************************************************
 * FUNCTION  : [negate] is public, see interface (vector.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let negate v =
  {x = -.v.x; y = -.v.y; z = -.v.z};;
    
(*****************************************************************************
 * FUNCTION  : [isNormalized] is public, see interface (vector.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isNormalized v = 
  abs_float(1.0 -. (length v)) <= normalizeTolerance;;
    
(*****************************************************************************
 * FUNCTION  : [isOrthogonal] is public, see interface (vector.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isOrthogonal v1 v2 = 
  abs_float(dot v1 v2) <= orthogonalTolerance;;

(*****************************************************************************
 * FUNCTION  : [isZeroVector] is public, see interface (vector.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isZero v = 
  v.x = 0.0 &&
  v.y = 0.0 &&
  v.z = 0.0;;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
