(*****************************************************************************
 * FILE      : char2.mli
 * CONTENTS  : Interface om module Char2.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 10:10:58 jenso>
 * COMMENTS  : This file shouldn't really be necessary. 
 *****************************************************************************)

(*****************************************************************************
 * FUNCTION  : [isWhite c] returns true if c is a whitespace character, false
 *           : otherwise.
 *****************************************************************************)
val isWhite : char -> bool

(*****************************************************************************
 * FUNCTION  : [isDigit c] returns true if the character c represents a digit,
 *           : false otherwise.
 *****************************************************************************)
val isDigit : char -> bool

(*****************************************************************************
 * FUNCTION  : [isEof c] returns true if c is the end-of-file character, false
 *           : otherwise. 
 *****************************************************************************)
val isEof : char -> bool

(*****************************************************************************
 * FUNCTION  : [isNewline c] returns true if c is the newline character, false
 *           : otherwise.
 *****************************************************************************)
val isNewline : char -> bool

(*****************************************************************************
 * End of file
 *****************************************************************************)
