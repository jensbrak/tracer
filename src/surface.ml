(*****************************************************************************
 * FILE      : surface.ml
 * CONTENTS  : Implementation of module Surface.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 13:14:34 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * DATATYPE  : [surface] is the representation of ADT Surface
 * COMMENTS  : 
 *****************************************************************************)
type surface =
    {
     pigment : Pigment.pigment;
     finish  : Finish.finish
   } ;;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (surface.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create p f = {pigment = p; finish = f}

(*****************************************************************************
 * FUNCTION  : [pigment] is public, see interface (surface.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let pigment s = s.pigment;; 

(*****************************************************************************
 * FUNCTION  : [finish] is public, see interface (surface.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let finish s = s.finish;;

(*****************************************************************************
 * End of file
 *****************************************************************************)
