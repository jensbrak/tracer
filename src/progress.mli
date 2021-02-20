 (*****************************************************************************
 * FILE      : progress.mli
 * CONTENTS  : Interface of module Progress
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-02-15 13:03:00 jenso>
 * COMMENTS  : First, a general purpose progress indicator (GPI) is provided. 
 *           : Second, a number of predefined, ready-to-use progress 
 *           : indicators (PI) using the general one is provided.
 *           :
 *           : Short description of the PI's:
 *           : - Spinner: A small 'rotor' that spin around. Does only show
 *           :   progress, not "time left".
 *           : - Counter: A counter that increments from 0 to n, one step at
 *           :   the time (n given when creating the PI).
 *           : - Percent: Shows how many percent of n that has been processed
 *           :   (n given when creating the PI)
 *           : - Bar: A 'classic' progress bar. The actual width of the bar is 
 *           :   depending on the given width *and* max value n (n and width 
 *           :   given when creating the PI).
 *           : 
 *           : NOTE: The PI's are dependant on ANSI escape- codes for 
 *           : controlling the cursor.
 *           : In order to 'clean up' after showing the progress bar a 
 *           : function to 'delete' the text representing the PI is provided.
 *****************************************************************************)

(*****************************************************************************
 * ABSTYPE   : ['a progressIndicator] represents a general purpose progress 
 *           : indicator. It implements the core functionality for a simple
 *           : progress indicator.
 *****************************************************************************)
type 'a progressIndicator


(*****************************************************************************
 * FUNCTION  : [create oc pre post inc s] creates a progress indicator with 
 *           : initial state s. The functions pre, post and inc works as 
 *           : follows: inc updates the state one step, pre returns the string
 *           : representation of the state *before* updating the state, and
 *           : post returns the string representation *after* update. oc is
 *           : the channel to print the progress indicator to.
 *****************************************************************************)
val create :
  out_channel ->
  ('a -> string) ->
  ('a -> string) ->
  ('a -> 'a) ->
  'a -> 'a progressIndicator

(*****************************************************************************
 * FUNCTION  : [update p] updates the state of p. 
 *****************************************************************************)
val update : 'a progressIndicator -> unit
    
(*****************************************************************************
 * ABSTYPE   : [progress] represents a (predefined) progress indicator. 
 *****************************************************************************)
type progress

(*****************************************************************************
 * FUNCTION  : [createSpinner oc] creates a spinner progress indicator, with
 *           : oc as the output channel.
 *****************************************************************************)
val createSpinner : out_channel -> progress

(*****************************************************************************
 * FUNCTION  : [createCounter oc inf max] creates a counter progress 
 *           : indicator with infix string inf, max value max and oc as the
 *           : output channel.
 *****************************************************************************)
val createCounter : out_channel -> string -> int -> progress

(*****************************************************************************
 * FUNCTION  : [createPercent oc max] creates a percent progress indicator
 *           : with max value max and oc as the output channel.
 *****************************************************************************)
val createPercent : out_channel -> int -> progress

(*****************************************************************************
 * FUNCTION  : [createBar oc max w c] creates a bar progress indicator with
 *           : a maximum width of w characters (depending on max: actual width
 *           : is (max / (w - 2))). Each segment of the bar is represented by
 *           : character c. The bar is printed to channel oc.
 *****************************************************************************)
val createBar : out_channel -> int -> int -> char -> progress

(*****************************************************************************
 * FUNCTION  : [increase p] increases the progress indicator p on step. 
 *           : This has different effects depending on what kind of progress-
 *           : indicator p is. There's no check that p has reached its max-
 *           : level (if any).
 *****************************************************************************)
val increase : progress -> unit

(*****************************************************************************
 * FUNCTION  : [delete p] deletes (if any) text that represents progress-
 *           : indicator p. Preferably used when the progress indicator is 
 *           : finished (ie has reached max).
 *****************************************************************************)
val delete : progress -> unit

(*****************************************************************************
 * End of file
 *****************************************************************************)
