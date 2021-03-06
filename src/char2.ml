(*****************************************************************************
 * FILE      : char2.ml
 * CONTENTS  : Implementation of module Char2
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-05 14:18:46 jenso>
 * COMMENTS  : 
 *****************************************************************************)

(*****************************************************************************
 * FUNCTION  : [isWhite] is public, see interface (char2.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isWhite c =
  match c with
    '\n' | '\t' | ' ' -> true
  | _ -> false;;

(*****************************************************************************
 * FUNCTION  : [isDigit] is public, see interface (char2.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isDigit c =
  match c with
    '0' .. '9' -> true
  | _ -> false;;

(*****************************************************************************
 * FUNCTION  : [isEof] is public, see interface (char2.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let isEof c =
  Char.code c = 255;;

(*****************************************************************************
 * FUNCTION  : [isNewline] is public, see interface (char2.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let isNewline c = 
  c = '\n';;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
