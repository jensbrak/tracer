(*****************************************************************************
 * FILE      : ppm.ml
 * CONTENTS  : Implementation of module Ppm.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:38:26 jenso>
 * COMMENTS  : This module should be rewritten! It is too big and not 
 *           : particularly good (it tries to do more than it has to do)
 *****************************************************************************)
open Option;;

(*****************************************************************************
 * DATATYPE  : [ppmFormat] is public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
type ppmFormat = BINARY | ASCII;;

(*****************************************************************************
 * CONSTANT  : [default*] are public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultColorDepth = 255;;
let defaultOutputFormat = BINARY;;

(*****************************************************************************
 * CONSTANT  : [ppmCommentStr] is the comment character in PPM files.
 * COMMENTS  : 
 *****************************************************************************)
let ppmCommentStr = "#";;
  
(*****************************************************************************
 * FUNCTION  : [ppmFormatToString(f)] returns the string representation of 
 *           : format f.
 * COMMENTS  : 
 *****************************************************************************)
let ppmFormatToString(format) = 
  match format with
    BINARY -> "P6"
  | ASCII -> "P3";;

(*****************************************************************************
 * Writing a PPM-bitmap
 *****************************************************************************)

(*****************************************************************************
 * FUNCTION  : [writeRgbBinary os maxDepth c] writes the RGB-representation of 
 *           : color c to outstream os, in BINARY ppm format. The color is in 
 *           : the interval [0, maxDepth].
 * EFFECTS   : The color is written to outchannel os.
 * COMMENTS  : 
 *****************************************************************************)
let writeRgbBinary os maxDepth c = 
  let (r, g, b) = Color.toRgb maxDepth (Color.normalize c) in
  let convert =  Char.chr in
  let (rChr, gChr, bChr) = (convert r, convert g, convert b) in
  output_char os rChr; 
  output_char os gChr;
  output_char os bChr;;

(*****************************************************************************
 * FUNCTION  : [writeRgbBinary os maxDepth c] writes the RGB-representation of 
 *           : color c to outstream os, in ASCII ppm format. The color is in 
 *           : the interval [0, maxDepth].
 * EFFECTS   : The color is written to outchannel os.
 * COMMENTS  : 
 *****************************************************************************)
let writeRgbAscii os maxDepth c =
  let (r, g, b) = Color.toRgb maxDepth (Color.normalize c) in
  let depthDigits = Math.digits maxDepth in
  let convert i = 
    String.make (depthDigits - Math.digits i) ' ' ^ string_of_int i in
  let (rStr, gStr, bStr) = (convert r, convert g, convert b) in
  output_string os (rStr ^ " " ^ gStr ^ " " ^ bStr ^ " ");;

(*****************************************************************************
 * FUNCTION  : [writeBinaryData os maxDepth b] writes all pixels in bitmap b 
 *           : to outstream os, in BINARY ppm format.
 * EFFECTS   : The pixels in bitmap is written to outchannel os.
 * COMMENTS  : 
 *****************************************************************************)
let writeBinaryData os maxDepth bitmap = 
  for y = 0 to Bitmap.height(bitmap) - 1 do
    for x = 0 to Bitmap.width(bitmap) - 1 do
      writeRgbBinary os maxDepth (Bitmap.color bitmap x y)
    done;
  done;;
  
(*****************************************************************************
 * FUNCTION  : [writeAsciiData os maxDepth b] writes all pixels in bitmap b to
 *           : outstream os, in ASCII ppm format.
 * EFFECTS   : The pixels in bitmap is written to outchannel os.
 * COMMENTS  : 
 *****************************************************************************)
let writeAsciiData os maxDepth bitmap = 
  let colorsPerRow = 5 in
  let c = ref 0 in
  for y = 0 to Bitmap.height(bitmap) - 1 do
    for x = 0 to Bitmap.width(bitmap) - 1 do
      begin
	if !c <> 0 && !c mod colorsPerRow = 0 then
	  begin
	    output_string os "\n";
	    c := 0;
	  end;
	writeRgbAscii os maxDepth (Bitmap.color bitmap x y);
	incr(c);
      end
    done;
  done;;

(*****************************************************************************
 * FUNCTION  : [write] is public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let write os comments maxDepth format bitmap =
  
    output_string os (ppmFormatToString(format) ^ "\n");
    if comments <> [] then
      let cStr = ppmCommentStr in
      output_string os (cStr ^ (String.concat ("\n" ^ cStr) comments) ^ "\n");
    output_string os (string_of_int(Bitmap.width(bitmap)));
    output_string os (" ");
    output_string os (string_of_int(Bitmap.height(bitmap)));
    output_string os ("\n" ^ string_of_int(maxDepth) ^ "\n");
    match format with
      BINARY -> writeBinaryData os maxDepth bitmap
    | ASCII  -> writeAsciiData os maxDepth bitmap
 
(*****************************************************************************
 * FUNCTION  : [writeFile] is public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let writeFile fileName creatorStr maxDepth format bitmap = 
  try
    let os = open_out fileName in
    write os creatorStr maxDepth format bitmap;
    close_out os
  with
    Sys_error(s) -> 
      Error.io "PPM" ("error writing file: " ^ s) ;;

(*****************************************************************************
 * Reading a PPM-bitmap
 *****************************************************************************)

(*****************************************************************************
 * FUNCTION  : [isComment c] returns true if c is a PPM-file comment 
 *           : character. 
 * COMMENTS  : 
 *****************************************************************************)
let isComment c =
  Char.escaped(c) = ppmCommentStr;;

(*****************************************************************************
 * FUNCTION  : [skipComments is] consumes a PPM-file commentline from the
 *           : given stream.
 * EFFECTS   : Possibly consumes PPM-file comment line with leading 
 *           : whitespaces.
 * COMMENTS  : 
 *****************************************************************************)
let rec skipComments is =
  (Stream.skipWhites is;
  let c = Stream.peek is in
  if isComment c then
    (while not(Char2.isNewline(Stream.readChar is)) do () done;
     skipComments is));;

(*****************************************************************************
 * FUNCTION  : [ppmFormatOfString s] converts the given string s to the 
 *           : corresponding PPM-format, if possibile. If not, exception
 *           : Ppm is raised.
 * COMMENTS  : 
 *****************************************************************************)
let ppmFormatOfString s = 
  match s with
    "P6" | "p6" -> BINARY
  | "P3" | "p3" -> ASCII
  | _ -> Error.failure "ppmFormatOfString" "Unknown PPM-format";;

(*****************************************************************************
 * FUNCTION  : [readPpmFormat is] reads the PPM-format from the given 
 *           : inchannel. 
 * EFFECTS   : Consumes characters representing the PPM-format, if possible.
 * COMMENTS  : 
 *****************************************************************************)
let readPpmFormat is =
  let formatString = Stream.readString is 2 in
  ppmFormatOfString formatString;;

(*****************************************************************************
 * FUNCTION  : [readBinaryColor d ic] reads a color from inchannel ic, 
 *           : assuming ic holds a binary PPM with colordepth d.
 * EFFECTS   : Consumes three bytes (making a color) from the inchannel ic.
 * COMMENTS  : 
 *****************************************************************************)
let readColorBinary depth ic = 
  let r = input_byte ic in
  let g = input_byte ic in
  let b = input_byte ic in
  Color.ofRgb depth r g b;;
  
(*****************************************************************************
 * FUNCTION  : [readAsciiColor d is] reads a color from instream is, assuming 
 *           : the is holds an ASCII PPM with color depth d.
 * EFFECTS   : Consumes charactares representing a color from the instream is.
 * COMMENTS  : 
 *****************************************************************************)
let readColorAscii depth is =
  let r = (Stream.skipWhites is; Stream.readInt is) in
  let g = (Stream.skipWhites is; Stream.readInt is) in 
  let b = (Stream.skipWhites is; Stream.readInt is) in
  Color.ofRgb depth r g b;;

(*****************************************************************************
 * FUNCTION  : [readBinaryData b d w h ic] reads the color data from inchannel 
 *           : ic into bitmao b, assuming ic holds a binary PPM with color 
 *           : depth d, witdh w and height h.
 * EFFECTS   : Consumes characters from instream ic making the color data of a
 *           : bitmap in binary PPM format. Updates bitmap b with the colors/
 *           : pixels read.
 * COMMENTS  : 
 *****************************************************************************)
let readBinaryData b depth width height ic = 
  for y = 0 to height - 1 do
    for x = 0 to width - 1 do
      Bitmap.update b x y (readColorBinary depth ic);
    done
  done;;

(*****************************************************************************
 * FUNCTION  : [readAsciiData b d w h is] reads the color data from instream 
 *           : is into bitmao b, assuming is holds an ASCII PPM with color 
 *           : depth d, witdh w and height h.
 * EFFECTS   : Consumes characters from instream ic making the color data of a
 *           : bitmap in ASCII  PPM format. Updates bitmap b with the colors/
 *           : pixels read.
 * COMMENTS  : 
 *****************************************************************************)
let readAsciiData b depth width height is = 
  for y = 0 to height - 1 do
    for x = 0 to width - 1 do
      Bitmap.update b x y (readColorAscii depth is)
    done
  done;;

(*****************************************************************************
 * FUNCTION  : [read] is public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let read ic = 
  let is = Stream.create ic in
  let format = (skipComments is; Stream.skipWhites is; readPpmFormat is) in
  let width  = (skipComments is; Stream.skipWhites is; Stream.readInt is) in
  let height = (Stream.skipWhites is; Stream.readInt is) in
  let depth  = (skipComments is; Stream.skipWhites is; Stream.readInt is) in
  let b = Bitmap.create Color.black width height in
  begin
    match format with
      ASCII ->
	begin
	  skipComments is;
	  readAsciiData b depth width height is
	end
    | BINARY ->
      (* Ignore the buffer char - has to be a whitespace if ppm-file is *)
      (* correct.  Quite awkward solution, ok, but it works :) *)
	let (_, ic) = Stream.contents is in
	try
	  readBinaryData b depth width height ic
	with
	  End_of_file -> Error.io "PPM" "unexpected end of file"
	| Error.IO(_, s) -> Error.io "PPM" "error reading file" ;
  end;
  b;;

(*****************************************************************************
 * FUNCTION  : [readFile] is public, see interface (ppm.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let readFile fileName =
  try
    let is = open_in fileName in
    let b = read is in
    close_in is;
    b     
  with
    (* Re-raise IO exception (to include filename as well) *)
    Error.IO(_, _) -> Error.io "PPM" ("Unexpected end: " ^ fileName);;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
