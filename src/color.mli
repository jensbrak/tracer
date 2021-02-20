(*****************************************************************************
 * FILE      : color.mli
 * CONTENTS  : Interface of module Color
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:45:20 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * ABSTYPE   : [color] represents a color. 
 *****************************************************************************)
type color

(*****************************************************************************
 * CONSTANT  : [*] are some usual color constants
 *****************************************************************************)
val black : color
val white : color
val red : color
val green : color
val blue : color
val grey : color
val yellow : color
val cyan : color
val magenta : color

(*****************************************************************************
 * FUNCTION  : [create r g b] returns a new color based on the three 
 *           : floats given, representing the relative (in percent) R, G and B
 *           : values of the color.
 *****************************************************************************)
val create : float -> float -> float -> color

(*****************************************************************************
 * FUNCTION  : [ofRgb maxColor r g b] returns a new color based 
 *           : on the three integers given, representing the R, G, and B
 *           : values of the color. The color is normalized using the given
 *           : maxValue, representing the maximum color value possible.
 *****************************************************************************)
val ofRgb : int -> int -> int -> int -> color

(*****************************************************************************
 * FUNCTION  : [add c1 c2] returns the sum of colors c1 and c2.
 *****************************************************************************)
val add : color -> color -> color

(*****************************************************************************
 * FUNCTION  : [scale c s] scales the color c with scalar s.
 *****************************************************************************)
val scale : color -> float -> color

(*****************************************************************************
 * FUNCTION  : [normalize c] returns color c normalized. 
 *****************************************************************************)
val normalize : color -> color

(*****************************************************************************
 * FUNCTION  : [isNormalized c] returns true if c is a normalized color,
 *           : according to the maximum values the components of a color can
 *           : have. Use normalize to ensure this.
 *****************************************************************************)
val isNormalized : color -> bool

(*****************************************************************************
 * FUNCTION  : [toRgb maxColor c] returns the R, G and B values of color c, 
 *           : using maxColor as max value for each RGB-value.
 *****************************************************************************)
val toRgb : int -> color -> int * int * int

(*****************************************************************************
 * FUNCTION  : [toString(c)] returns a string representation of color c. 
 *****************************************************************************)
val toString : color -> string

(*****************************************************************************
 * End of file
 *****************************************************************************)

