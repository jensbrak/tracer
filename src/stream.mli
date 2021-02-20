(*****************************************************************************
 * FILE      : stream.mli
 * CONTENTS  : Interface of ADT stream.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 10:21:20 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option

(*****************************************************************************
 * ABSTYPE   : [stream] is a character instream. 
 * COMMENTS  : This module implements a simple stream parser. Its purpose is
 *           : mainly to provide the opportunity to peek at a stream without
 *           : consuming characters from it. The stdlib Stream provided in
 *           : the ocaml-distribution has this functionality as well but 
 *           : uses a large string buffer. This is sometimes not very
 *           : desirable. This module uses a single character buffer and the
 *           : main purpose for this is to provide the opportunity to extract
 *           : the in_channel without loosing more than at most one character
 *           : from the in_channel. This functionality can be used if one 
 *           : needs to change from the parser functionality to channel
 *           : functionality on an open stream. 
 *****************************************************************************)
type stream

(*****************************************************************************
 * FUNCTION  : [create ic] creates a stream out of the given in_channel.
 *****************************************************************************)
val create : in_channel -> stream

(*****************************************************************************
 * FUNCTION  : [ofFile s] creates a stream of the file with filename s.
 *****************************************************************************)
val ofFile : string -> stream

(*****************************************************************************
 * FUNCTION  : [contents is] returns the contents of the stream is. This is
 *           : the in_channel used internally (and given when creating the 
 *           : stream) and a possible character from the beginning of the 
 *           : stream, if the one-character buffer was non-empty.
 *****************************************************************************)
val contents : stream -> char option * in_channel

(*****************************************************************************
 * FUNCTION  : [isEof is] returns true if the next character in stream is is  
 *           : the end-of-file character.
 *****************************************************************************)
val isEof : stream -> bool

(*****************************************************************************
 * FUNCTION  : [skipWhites is] consumes all whitespace characters (if any) 
 *           : from the stream is until the next character in the stream is a 
 *           : non-whitespace character. Whitespace characters are recognized 
 *           : by Char2.isWhite().
 * EFFECTS   : Possible consuming a number of consecutive whitespace 
 *           : characters from the given stream.
 *****************************************************************************)
val skipWhites : stream -> unit

(*****************************************************************************
 * FUNCTION  : [peek is] returns the first character in the stream is, without 
 *           : consuming it from the stream.
 *****************************************************************************)
val peek : stream -> char

(*****************************************************************************
 * FUNCTION  : [read is] reads one character from stream is. 
 * EFFECTS   : Consumes one character from the given stream.
 *****************************************************************************)
val readChar : stream -> char

(*****************************************************************************
 * FUNCTION  : [readInt is] parses a positive integer from the stream is, if 
 *           : possible. There has to be at least one leading character 
 *           : representing a digit, otherwise no integer can be parsed. 
 *           : Raises exception Stream if this is not the case.
 * EFFECTS   : Possible consuming a number of consecutive characters 
 *           : representing an integer number
 *****************************************************************************)
val readInt : stream -> int

(*****************************************************************************
 * FUNCTION  : [readString is s] returns a string with s characters, read from 
 *           : the stream is. If end of file is reached before s characters 
 *           : could be read, exception Stream is raised. 
 * EFFECTS   : If possible, consumes s characters from the given stream.
 *****************************************************************************)
val readString : stream -> int -> string

(*****************************************************************************
 * End of file
 *****************************************************************************)
