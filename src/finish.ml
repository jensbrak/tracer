(*****************************************************************************
 * FILE      : finish.ml
 * CONTENTS  : Implementation of module Finish.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 13:05:29 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [finish] is the representation of ADT Finish.
 * COMMENTS  : 
 *****************************************************************************)
type finish =
  {
    diffuse    : float;  
    reflection : float   
  };;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (finish.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create d r = 
  {
    diffuse = d;
    reflection = r;
  };;

(*****************************************************************************
 * CONSTANT  : [*] are public, see interface (finish.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let defaultDiffuse = 1.0;;
let defaultReflection = 0.0;;
let defaultFinish = create defaultDiffuse defaultReflection;;

(*****************************************************************************
 * FUNCTION  : [diffuse] is public, see interface (finish.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let diffuse f = f.diffuse;;

(*****************************************************************************
 * FUNCTION  : [reflection] is public, see interface (finish.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let reflection f = f.reflection;;
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
