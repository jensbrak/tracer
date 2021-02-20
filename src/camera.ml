(*****************************************************************************
 * FILE      : camera.ml
 * CONTENTS  : Implementation of module Camera.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-17 17:54:10 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;
  
(*****************************************************************************
 * DATATYPE  : [camera] is the representation of ADT Camera.
 * COMMENTS  : 
 *****************************************************************************)
type camera =
  {
    progress : Progress.progress option; (* Progress indicator *)
    position : Vector.vector; (* Position of camera *)
    corner   : Vector.vector; (* Left corner of picture to create *)
    deltaX   : Vector.vector; (* deltaX of picture (distance between pixels) *)
    deltaY   : Vector.vector; (* deltaY of picture (distance between pixels) *)
    width    : int;           (* Width (in pixels) of picture to create *)
    height   : int            (* Height (in pixels) of picture to create *)
 };; 
  
(*****************************************************************************
 * CONSTANT  : [default*] are public, see interface (camera.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultZoomValue   = 1.0;;
let defaultImageWidth  = 240;;
let defaultImageHeight = 240;;
let defaultWidth       = 1.0;;
let defaultHeight      = 1.0;;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (camera.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create pos up lookAt progress width height x y zoom =
  (* Resolution is number of pixels (in picture) per world coordinate *)
  let resolutionX = width /. float(x) in 
  let resolutionY = height /. float(y) in

  (* Calculate normalized direction vectors for the camera *)
  let dir = Vector.normalize(Vector.sub lookAt pos) in
  let right = Vector.normalize(Vector.cross up dir) in
  let down = Vector.normalize(Vector.cross right dir) in

  (* Calculate the position of the upper left corner of picture to create *)
  let center = Vector.scale dir zoom in
  let cornerX = Vector.scale right (width /. 2.0) in
  let cornerY = Vector.scale down (height /. 2.0) in
  let cornerZ = Vector.add pos center in
  let pictureCorner = Vector.sub (Vector.sub cornerZ cornerX) cornerY in

  (* Calculate the distance between each pixel in the picture *)
  let pixelDeltaX = Vector.scale right resolutionX in
  let pixelDeltaY = Vector.scale down resolutionY in

  (* Return the camera *)
  {progress = progress;
   position = pos;
   corner = pictureCorner;
   deltaX = pixelDeltaX;
   deltaY = pixelDeltaY;
   width = x;
   height = y};;

(*****************************************************************************
 * FUNCTION  : [takePicture] is public, see interface (camera.mli) for 
 *           : description.
 * ALGORITHM : 0. FOR each pixel in the bitmap to produce
 *           : 1.   r := ray from camera origin through current pixel
 *           : 2.   c := resulting color from tracing r into the given scene
 *           : 3.   update current pixel with c
 *           : 4. return bitmap
 * COMMENTS  : 
 *****************************************************************************)
let takePicture c trace scene = 
  (* Pre calculate the position of each pixel *)
  let precalcX =
    Array.init c.width (fun x -> Vector.scale c.deltaX (float x)) in 
  let precalcY =
    Array.init c.height (fun y -> Vector.scale c.deltaY (float y)) in 

  let showProgress = isSome(c.progress) in
  
  (* Calculate a color at position (x, y) *)
  let traceXY x y =
    let pixelLocation = 
      Vector.add (Vector.add precalcY.(y) precalcX.(x)) c.corner in
    let rayDirection = Vector.normalize(Vector.sub pixelLocation c.position) in
    let ray = Ray.create c.position rayDirection in
    let _ = if showProgress && x + 1 = c.width then
      Progress.increase(valOf(c.progress)) in
    trace scene ray
  in

  (* Create the bitmap by tracing a ray for each pixel *)
  let b = Bitmap.tabulate c.width c.height traceXY in
  let _ = if showProgress then Progress.delete (valOf(c.progress)) in
  b;;
    
(*****************************************************************************
 * End of file.
 *****************************************************************************)
