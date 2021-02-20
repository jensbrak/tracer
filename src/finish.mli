(*****************************************************************************
 * FILE      : finish.mli
 * CONTENTS  : Interface of module Finish
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:51:27 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * ABSTYPE   : [finish] represents a surface finish.
 *           : Diffuse determines how much of a light ray really illuminates
 *           : a surface and reflection how reflective the surface is (ie
 *           : how much surrounding objects reflects in the surface).
 *****************************************************************************)
type finish 

(*****************************************************************************
 * CONSTANT  : [defaultDiffuse] is the suggested default value for diffuse.
 *****************************************************************************)
val defaultDiffuse : float

(*****************************************************************************
 * CONSTANT  : [defaultReflection] is the suggested default value for 
 *           : reflection.
 *****************************************************************************)
val defaultReflection : float

(*****************************************************************************
 * CONSTANT  : [defaultFinish] is the suggested default value for a finish.
 *           : Equals 'Finish.create defaultDiffuse defaultReflection'
 *****************************************************************************)
val defaultFinish : finish

(*****************************************************************************
 * FUNCTION  : [create d r] returns a finish with diffuse d and reflection r. 
 *****************************************************************************)
val create : float -> float -> finish

(*****************************************************************************
 * FUNCTION  : [diffuse f] returns the diffuse factor of finish f. 
 *****************************************************************************)
val diffuse : finish -> float

(*****************************************************************************
 * FUNCTION  : [reflection f] returns the reflection factor of finish f. 
 *****************************************************************************)
val reflection : finish -> float

(*****************************************************************************
 * End of file
 *****************************************************************************)
