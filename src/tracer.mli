(*****************************************************************************
 * FILE      : tracer.mli
 * CONTENTS  : Interface of module Tracer
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 15:22:19 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Vector
open Hitpoint
open Color
open Ray
open Scene

(*****************************************************************************
 * ABSTYPE   : [tracer] represents a ray tracer; its main purpose is to define 
 *           : a function that can trace a scene by sending a given ray
 *           : through a scene and perform ray tracing calculations in order
 *           : to get a resulting color. The technique used is 'classic'
 *           : recursive ray tracing.
 *****************************************************************************)
type tracer

(*****************************************************************************
 * CONSTANT  : [defaultTraceSimple] is the suggested default value for the
 *           : tracer behavior; simple means do not use shadowing and 
 *           : positioning of lights (simulate a light in camera). Not simple
 *           : means ordinary recursive ray tracing.
 *****************************************************************************)
val defaultTraceSimple : bool

(*****************************************************************************
 * CONSTANT  : [defaultReflectionDepth] is the suggested default value to be
 *           : used as maximum reflection depth. The reflection depth is the
 *           : number of bounces a ray can do before the final color is
 *           : determined.
 *****************************************************************************)
val defaultReflectionDepth : int

(*****************************************************************************
 * FUNCTION  : [create rd sr] returns a tracer using maximum reflection depth 
 *           : rd and a simplified ray tracing technique if sr is true; 
 *           : ordinary tracer if false.
 *****************************************************************************)
val create : int -> bool -> tracer

(*****************************************************************************
 * FUNCTION  : [trace t s r] traces ray r through scene s using tracer t. 
 *****************************************************************************)
val trace : tracer -> scene -> ray -> color

(*****************************************************************************
 * End of file
 *****************************************************************************)
