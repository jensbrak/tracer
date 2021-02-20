(*****************************************************************************
 * FILE      : pigment.ml
 * CONTENTS  : Implementation of ADT Pigment.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 13:12:21 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [pigment] is the representation of ADT Pigment.
 * COMMENTS  : 
 *****************************************************************************)
type pigment = 
    COLOR of Color.color        (* Either a color *)
  | BITMAP of Bitmap.bitmap;;   (* ...or a bitmap *)

(*****************************************************************************
 * FUNCTION  : [createBitmap] is public, see interface (pigment.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createBitmap b = BITMAP b;;

(*****************************************************************************
 * FUNCTION  : [createColor] is public, see interface (pigment.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let createColor c = COLOR c;;

(*****************************************************************************
 * CONSTANT  : [defaultPigment] is public, see interface (pigment.mli) for
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultPigment = createColor Color.grey;;

(*****************************************************************************
 * FUNCTION  : [color] is public, see interface (pigment.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let color p =
  match p with
    (COLOR c) -> c
  | _ -> Error.domain "Pigment.color" "expected a color";;

(*****************************************************************************
 * FUNCTION  : [calculatePixel max ind] returns the integer position ranging
 *           : from 0-(max-1) using ind as a relative (in percent of max) 
 *           : position.
 * COMMENTS  : 
 *****************************************************************************)
let calculatePixel max ind =
  (* Only interested in the fractionpart *)
  let ind = Math.frac ind in

  (* Adjust index to fit range [0, 1[ *)
  let clippedInd =
    if ind < 0.0 then ind +. 1.0 else if ind >= 1.0 then 0.0 else ind in

  (* Calculate the integer position given the largest value possible *)
  let pos = truncate((float max) *. clippedInd) in
  pos;;

(*****************************************************************************
 * FUNCTION  : [getPixel b u v] returns the pixel at relative position (u, v)
 *           : in bitmap b. It is guaranteed that the position of the pixel
 *           : is within bitmap bounds (ie, u- or v-values not in the range 
 *           : [0, 1[ is clipped to fit the range.)
 * COMMENTS  : 
 *****************************************************************************)
let getPixel b u v = 
  let w = Bitmap.width b in
  let h = Bitmap.height b in
  let x = calculatePixel w u in
  let y = calculatePixel h v in
  Bitmap.color b x y;;

(*****************************************************************************
 * FUNCTION  : [colorUV] is public, see interface (pigment.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let colorUV p u v =
  match p with
    (BITMAP b) -> getPixel b u v
  | _ -> Error.domain "Pigment.colorUV" "expected a bitmap";;


(*****************************************************************************
 * FUNCTION  : [isColor] is public, see interface (pigment.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isColor p = 
  match p with 
    COLOR _ -> true
  | _ -> false;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
