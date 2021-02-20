(*****************************************************************************
 * FILE      : timer.ml
 * CONTENTS  : Implementation of module Timer.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 10:20:27 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Unix;;

(*****************************************************************************
 * DATATYPE  : [timer] is the representation of ADT Timer.
 * COMMENTS  : 
 *****************************************************************************)
type timer =
    {
      itimer : interval_timer_status
    };;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (timer.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create() = 
  let t = 
    {it_interval = 1000000.0;
     it_value    = 1000000.0} in
  {itimer = setitimer ITIMER_VIRTUAL t};;

(*****************************************************************************
 * FUNCTION  : [reset] is public, see interface (timer.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let reset _ =
  let t' = getitimer ITIMER_VIRTUAL in
  {itimer = t'};;

(*****************************************************************************
 * FUNCTION  : [elapsed] is public, see interface (timer.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let elapsed t = 
  let t' = getitimer ITIMER_VIRTUAL in
  Math.round((t.itimer.it_value -. t'.it_value) *. 1000.0);;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
