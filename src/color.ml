(*****************************************************************************
 * FILE      : color.ml
 * CONTENTS  : Implementation of module Color
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:46:17 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * CONSTANT  : [maxValue] is the maximum floating point number a color can
 *           : have. 
 * COMMENTS  : Used internally for clipping only
 *****************************************************************************)
let maxValue = 1.0;;

(*****************************************************************************
 * DATATYPE  : [color] is the representation of ADT color.
 * COMMENTS  : Records with floats are handled more efficient by the compiler.
 *****************************************************************************)
type color = {r : float; g : float; b : float};;

(*****************************************************************************
 * FUNCTION  : [component[Of|To]Int maxColor c] converts a color component
 *           : from/to an integer using max value maxColor for each component.
 * COMMENTS  : 
 *****************************************************************************)
let componentOfInt maxColor i = float(i) /. float(maxColor);;
let componentToInt maxColor c = truncate(c *. float(maxColor));;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (color.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create r g b = {r = r; g = g; b = b};;

(*****************************************************************************
 * FUNCTION  : [ofRgb] is public, see interface (color.mli) for description.
 * COMMENTS  : Color is normalized using maxColor.
 *****************************************************************************)
let ofRgb maxColor r g b =
  let newR = componentOfInt maxColor r in
  let newG = componentOfInt maxColor g in
  let newB = componentOfInt maxColor b in
  {r = newR; g = newG; b = newB};;
    
(*****************************************************************************
 * CONSTANT  : [*] are public, see interface (color.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let black   = create 0.0 0.0 0.0
and white   = create 1.0 1.0 1.0
and red     = create 1.0 0.0 0.0
and green   = create 0.0 1.0 0.0
and blue    = create 0.0 0.0 1.0
and grey    = create 0.5 0.5 0.5
and yellow  = create 1.0 1.0 0.0
and cyan    = create 0.0 1.0 1.0
and magenta = create 1.0 0.0 1.0;;

(*****************************************************************************
 * FUNCTION  : [add] is public, see interface (color.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let add c1 c2 =
  {r = c1.r +. c2.r; g = c1.g +. c2.g; b = c1.b +. c2.b}

(*****************************************************************************
 * FUNCTION  : [scale] is public, see interface (color.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let scale c s =
  {r = c.r *. s; g = c.g *.s; b = c.b *. s}

(*****************************************************************************
 * FUNCTION  : [toRgb] is public, see interface (color.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let toRgb maxColor c =
  let rValue = componentToInt maxColor c.r in
  let gValue = componentToInt maxColor c.g in
  let bValue = componentToInt maxColor c.b in
  (rValue, gValue, bValue);;

(*****************************************************************************
 * FUNCTION  : [normalize] is public, see interface (color.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let normalize c =
  let clip x = if x > maxValue then maxValue else x in
  {r = clip c.r; g = clip c.g; b = clip c.b}

(*****************************************************************************
 * FUNCTION  : [isNormalized] is public, see interface (color.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isNormalized c = 
  let clipped x = x <= maxValue in
  clipped c.r && clipped c.g && clipped c.b;;
  
(*****************************************************************************
 * FUNCTION  : [toString] is public, see interface (color.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let toString c =
  let convert = string_of_float in
  let prefix = "color rgb <" in
  let sep    = ", " in
  let suffix = ">" in
  prefix ^ convert(c.r) ^ sep ^ convert(c.g) ^ sep ^ convert(c.b) ^ suffix
      
(*****************************************************************************
 * End of file.
 *****************************************************************************)
