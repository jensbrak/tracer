(*****************************************************************************
 * FILE      : ppm.mli
 * CONTENTS  : Interface of module Ppm.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:28:02 jenso>
 * COMMENTS  : See manual pages for ppm for a description of the format, or
 *           : visit the URL http://www.dcs.ed.ac.uk/%7Emxr/gfx/ which holds
 *           : descriptions of many graphic formats, including PPMs.
 *****************************************************************************)
open Option
open Bitmap

(*****************************************************************************
 * DATATYPE  : [ppmFormat] is the different format PPM supports; ASCII or
 *           : BINARY.
 *****************************************************************************)
type ppmFormat = | BINARY | ASCII

(*****************************************************************************
 * CONSTANT  : [defaultColorDepth] is the suggested default value for color-
 *           : depth. The color depth is the max value a color component can 
 *           : have; as the PPM format uses the RGB model the maximum number
 *           : of colors is color depth^3. The supported PPM format uses 256 
 *           : colors for each component, ie color depth 255, yielding in 
 *           : 256^3 = 16777216 colors. 
 *           : Note: a value different from 255 may produce unreadable PPM-
 *           : bitmaps when writing PPMs. 
 *****************************************************************************)
val defaultColorDepth : int

(*****************************************************************************
 * CONSTANT  : [defaultOutputFormat] is the suggested default value for the
 *           : output format, ie which type of PPM (see ppmFormat) to produce
 *           : when writing PPMs. As the ASCII-version is far more storage-
 *           : expensive the value used here is BINARY.
 *****************************************************************************)
val defaultOutputFormat : ppmFormat

(*****************************************************************************
 * FUNCTION  : [write os cStr maxDepth f b] writes the bitmap b to outstream 
 *           : os, in the ppm format f with color depth maxDepth. cStr is a  
 *           : possibly empty list of line wise comment strings (written as a 
 *           : comment in the header of the ppm file). Raises exception Ppm 
 *           : if an error occurs. 
 * EFFECTS   : The bitmap b is written to outstream os.
 *****************************************************************************)
val write : out_channel -> string list -> int -> ppmFormat -> bitmap -> unit

(*****************************************************************************
 * FUNCTION  : [write s cStr maxDepth f b] writes the bitmap b to file with
 *           : name s, in the ppm format f with color depth maxDepth. cStr is 
 *           : a possibly empty list of line wise comment strings (written as 
 *           : a comment in the header of the ppm file). Raises exception Ppm 
 *           : if an error occurs. 
 * EFFECTS   : The bitmap b is written to file s.
 *****************************************************************************)
val writeFile : string -> string list -> int -> ppmFormat -> bitmap -> unit

(*****************************************************************************
 * FUNCTION  : [read ic] reads a PPM-file from inchannel ic and returns the 
 *           : resulting bitmap. The PPM formats supported are the ASCII or
 *           : binary versions.
 *****************************************************************************)
val read : in_channel -> bitmap

(*****************************************************************************
 * FUNCTION  : [readFile s] reads a PPM-file from file with name s and returns
 *           : the resulting bitmap. The PPM formats supported are the ASCII 
 *           : or binary versions.
 *****************************************************************************)
val readFile : string -> bitmap

(*****************************************************************************
 * End of file
 *****************************************************************************)
