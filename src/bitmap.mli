(*****************************************************************************
 * FILE      : bitmap.mli
 * CONTENTS  : Interface of module Bitmap.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 13:04:44 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Color

(*****************************************************************************
 * ABSTYPE   : [bitmap] is a 2-dimensional collection of colors. Each point
 *           : of the grid (a color) is referred to as a pixel.
 *****************************************************************************)
type bitmap

(*****************************************************************************
 * FUNCTION  : [create c w h] returns a bitmap with width w and height h 
 *           : where each pixel has the initial color c.
 *****************************************************************************)
val create : color -> int -> int -> bitmap

(*****************************************************************************
 * FUNCTION  : [tabulate w h f] returns a bitmap with width w and height h
 *           : where the color of each pixel is calculated by applying f to
 *           : i j, where i and j ranges from 0 to width - 1 and 0 to 
 *           : height - 1 respectively.
 *****************************************************************************)
val tabulate : int -> int -> (int -> int -> color) -> bitmap

(*****************************************************************************
 * FUNCTION  : [width(b)|height(b)] returns the width/height of bitmap b. 
 *****************************************************************************)
val width : bitmap -> int
val height : bitmap -> int

(*****************************************************************************
 * FUNCTION  : [update b x y c] updates the pixel at position (x, y) in bitmap
 *           : b to have color c. Raises exception Domain if index is out of
 *           : bounds.
 * EFFECTS   : The bitmap is updated with a new color at (x, y).
 *****************************************************************************)
val update: bitmap -> int -> int -> color -> unit

(*****************************************************************************
 * FUNCTION  : [color b x y] returns the color of the pixel at position (x, y)
 *           : in bitmap b .Raises exception Domain if index is out of bounds.
 *****************************************************************************)
val color : bitmap -> int -> int -> color

(*****************************************************************************
 * FUNCTION  : [app f b] applies f to each pixel of bitmap b.
 * EFFECTS   : Updates each pixel in the bitmap.
 *****************************************************************************)
val app : (color -> unit) -> bitmap -> unit

(*****************************************************************************
 * FUNCTION  : [toString(b)] returns a string representation of bitmap b.
 *           : However, this is not an ascii version of the image, just some
 *           : selected information about the image.
 *****************************************************************************)
val toString : bitmap -> string

(*****************************************************************************
 * End of file
 *****************************************************************************)
