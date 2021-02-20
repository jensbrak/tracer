(*****************************************************************************
 * FILE      : pigment.mli
 * CONTENTS  : Interface of ADT Pigment
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <1999-10-24 23:52:12 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Bitmap
open Color

(*****************************************************************************
 * ABSTYPE   : [pigment] represents the pigment of a surface. A pigment can be
 *           : seen as the raw color of the surface, without its finish-
 *           : properties.
 *****************************************************************************)
type pigment 

(*****************************************************************************
 * CONSTANT  : [defaultPigment] is the suggested default value for pigment.
 *****************************************************************************)
val defaultPigment : pigment

(*****************************************************************************
 * FUNCTION  : [createBitmap b] returns a pigment based on the bitmap b.
 *****************************************************************************)
val createBitmap : bitmap -> pigment

(*****************************************************************************
 * FUNCTION  : [createColor c] returns a pigment based on the color c. 
 *****************************************************************************)
val createColor : color -> pigment

(*****************************************************************************
 * FUNCTION  : [color p] returns the color of the pigment p. Makes sense only
 *           : with pigments created using 'createColor'.
 *****************************************************************************)
val color : pigment -> color
    
(*****************************************************************************
 * FUNCTION  : [colorUV u v p] returns the color of pigment p using u and v
 *           : as relative position of the x- and y-coordinate of the pixel
 *           : to extract from p. Makes sense only with pigments created using
 *           : 'createBitmap'.
 *****************************************************************************)
val colorUV : pigment -> float -> float -> color

(*****************************************************************************
 * FUNCTION  : [isColor p] returns true if p is a pigment of type color, ie 
 *           : created using 'createColor'.
 *****************************************************************************)
val isColor : pigment -> bool

(*****************************************************************************
 * End of file
 *****************************************************************************)
