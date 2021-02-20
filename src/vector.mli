(*****************************************************************************
 * FILE      : vector.mli
 * CONTENTS  : Interface of module Vector.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 12:43:29 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * ABSTYPE   : [vector] represents a tree-dimensional vector.
 *****************************************************************************)
type vector

(*****************************************************************************
 * CONSTANT : [zeroVector] is the zero vector; <0, 0, 0>
 *****************************************************************************)
val zeroVector : vector

(*****************************************************************************
 * CONSTANT : [xVector] is the x vector (with length 1); <1, 0, 0>
 *****************************************************************************)
val xVector : vector

(*****************************************************************************
 * CONSTANT : [yVector] is the y vector (with length 1); <0, 1, 0>
 *****************************************************************************)
val yVector : vector

(*****************************************************************************
 * CONSTANT : [zVector] is the z vector (with length 1); <0, 0, 1>
 *****************************************************************************)
val zVector : vector

(*****************************************************************************
 * FUNCTION  : [create x y z] returns a new vector <x y z> with the given
 *           : components.
 *****************************************************************************)
val create : float -> float -> float -> vector

(*****************************************************************************
 * FUNCTION  : [x|y|z v] returns the x/y/z component of vector v.
 *****************************************************************************)
val x : vector -> float
val y : vector -> float
val z : vector -> float

(*****************************************************************************
 * FUNCTION  : [toString(v)] returns a string representation of the vector v.
 *****************************************************************************)
val toString : vector -> string

(*****************************************************************************
 * FUNCTION  : [dot v1 v2] returns the dot product of v1 and v2. 
 *****************************************************************************)
val dot : vector -> vector -> float

(*****************************************************************************
 * FUNCTION  : [cross v1 c2] returns the cross product of v1 and v2. 
 *****************************************************************************)
val cross : vector -> vector -> vector

(*****************************************************************************
 * FUNCTION  : [add v1 v2] returns the vector sum of vectors v1 and v2.
 *****************************************************************************)
val add : vector -> vector -> vector

(*****************************************************************************
 * FUNCTION  : [sub v1 v2] returns the vector difference of vectors v1 and 
 *           : v2.
 *****************************************************************************)
val sub : vector -> vector -> vector

(*****************************************************************************
 * FUNCTION  : [mult v1 v2] returns the vector product of vectors v1 and 
 *           : v2 (ie component wise multiplication).
 *****************************************************************************)
val mult : vector -> vector -> vector

(*****************************************************************************
 * FUNCTION  : [scale v s] scales the vector v with factor s. 
 *****************************************************************************)
val scale : vector -> float -> vector

(*****************************************************************************
 * FUNCTION  : [length(v)] returns the length of vector v. 
 *****************************************************************************)
val length : vector -> float

(*****************************************************************************
 * FUNCTION  : [normalize(v)] returns a normalized copy of vector v. 
 *           : Raises exception Domain if v is the zero vector.
 *****************************************************************************)
val normalize : vector -> vector

(*****************************************************************************
 * FUNCTION  : [negate(v)] returns the negation of vector v, ie each 
 *           : component is negated.
 *****************************************************************************)
val negate : vector -> vector

(*****************************************************************************
 * FUNCTION  : [isNormalized(v)] returns true if v is normalized, ie the  
 *           : length of v is 1.0, otherwise false. Uses a small constant 
 *           : to determine the tolerance of floating point inaccuracy (see 
 *           : implementation for details).
 *****************************************************************************)
val isNormalized : vector -> bool

(*****************************************************************************
 * FUNCTION  : [isOrthogonal v1 v2] returns true if v1 and v2 are 
 *           : orthogonal, ie the dot product is (close to) zero. Uses a small
 *           : constant to determine the tolerance of floating point 
 *           : inaccuracy (see implementation for details)
 *****************************************************************************)
val isOrthogonal : vector -> vector -> bool

(*****************************************************************************
 * FUNCTION  : [isZero(v)] returns true if v is the zero vector.
 *****************************************************************************)
val isZero : vector -> bool

(*****************************************************************************
 * End of file
 *****************************************************************************)
