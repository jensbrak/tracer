(*****************************************************************************
 * FILE      : camera.mli
 * CONTENTS  : Interface of module Camera.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-17 13:44:22 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option
open Progress
open Scene
open Ray
open Color
open Bitmap
open Vector

(*****************************************************************************
 * ABSTYPE   : [camera] represents a camera in a ray tracer. The camera is the 
 *           : viewpoint of the scene to trace.
 *****************************************************************************)
type camera 

(*****************************************************************************
 * CONSTANT  : [defaultZoomValue] is the suggested default value for the zoom
 *           : value. 
 *****************************************************************************)
val defaultZoomValue : float

(*****************************************************************************
 * CONSTANT  : [defaultImage[Width|Height]] is the suggested default values
 *           : for the width and height of the bitmap to produce. 
 *****************************************************************************)
val defaultImageWidth : int
val defaultImageHeight : int

(*****************************************************************************
 * CONSTANT  : [default[Width|Height]] is the suggested default values for the
 *           : width and height of the image, in world coordinates.
 *****************************************************************************)
val defaultWidth : float
val defaultHeight : float

(*****************************************************************************
 * FUNCTION  : [create p u l w h x y z po] creates a new camera at 
 *           : position p, aimed at point l and with up direction u. 
 *           : x and y are width and height in pixels of the picture to 
 *           : create. w, h and z defines the relation between the world and 
 *           : the picture. w and h are the width of the picture in world 
 *           : coordinates and z is a zoom factor. If po is SOME(p), use
 *           : progress indicator p to print progress.
 *****************************************************************************)
val create : vector -> vector -> vector -> progress option ->  float -> 
  float -> int -> int -> float -> camera

(*****************************************************************************
 * FUNCTION  : [takePicture c t s] takes a picture of scene s with camera s
 *           : using tracer function t. The picture is returned as a bitmap. 
 *****************************************************************************)
val takePicture : camera -> (scene -> ray -> color) -> scene -> bitmap

(*****************************************************************************
 * End of file.
 *****************************************************************************)
