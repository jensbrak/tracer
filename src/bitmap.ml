(*****************************************************************************
 * FILE      : bitmap.ml
 * CONTENTS  : Implementation of module Bitmap.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:27:35 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [bitmap] is the representation of ADT Bitmap.
 * COMMENTS  : 
 *****************************************************************************)
type bitmap =
    {
     data   : Color.color array;  (* Pixel data as 1-dim. array of colors *)
     width  : int;
     height : int
   };;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (bitmap.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create color width height =
  {
   data = Array.create (width * height) color;
   width = width;
   height = height
 } ;;

(*****************************************************************************
 * FUNCTION  : [tabulate] is public, see interface (bitmap.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let tabulate width height f =
  let arr = Array.create (width * height) Color.black in
  for j = 0 to pred height do
    for i = 0 to pred width do
      Array.set arr (j * width + i) (f i j)
    done;
  done;
  {data = arr; width = width; height = height};;

(*****************************************************************************
 * FUNCTION  : [width/height] are public, see interface (bitmap.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let width b = b.width;;
let height b = b.height;;

(*****************************************************************************
 * FUNCTION  : [update] is public, see interface (bitmap.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let update b x y c = 
  try
    Array.set b.data (b.width * y + x) c
  with
    Invalid_argument _ -> Error.domain "Bitmap.update" "index out of bounds";;

(*****************************************************************************
 * FUNCTION  : [color] is public, see interface (bitmap.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let color b x y =
  try
    b.data.(b.width * y + x)
  with
    Invalid_argument _ -> Error.domain "Bitmap.color" "index out of bounds";;

(*****************************************************************************
 * FUNCTION  : [app] is public, see interface (bitmap.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let app f b =
  Array.iter f b.data;;

(*****************************************************************************
 * FUNCTION  : [toString] is public, see interface (bitmap.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let toString b =
  let convert = string_of_int in  
  "Width:     " ^ convert(b.width) ^ "\n" ^
  "Height:    " ^ convert(b.height);;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
