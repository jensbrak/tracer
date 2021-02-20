(*****************************************************************************
 * FILE      : stream.ml
 * CONTENTS  : Implementation of module Stream.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-06 15:25:09 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;
open Char2;;

(*****************************************************************************
 * DATATYPE  : [stream] is the representation of ADT Stream.
 * COMMENTS  : Why doesn't it work defining buffer as a mutable instead of as
 *           : a reference? Have I missed something?!? What is the difference,
 *           : other than a reference being a record with one mutable field?
 *****************************************************************************)
type stream =
  {
    buffer  : char option ref;  (* One character buffer *)
    channel : in_channel        (* Inchannel to get characters from *)
  };;

(*****************************************************************************
 * FUNCTION  : [create] is public, see interface (stream.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let create ic =
  {buffer = ref NONE; channel = ic};;

(*****************************************************************************
 * FUNCTION  : [ofFile] is public, see interface (stream.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let ofFile s = {buffer = ref NONE; channel = open_in s};;

(*****************************************************************************
 * FUNCTION  : [peek] is public, see interface (stream.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let peek s =
  if isSome !(s.buffer) then
    valOf !(s.buffer)
  else
    try 
      let c = input_char s.channel in
      (s.buffer := SOME c;
       c)
    with
      End_of_file -> Error.io "stream" "end of stream";;

(*****************************************************************************
 * FUNCTION  : [contents] is public, see interface (stream.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let contents s = 
  (!(s.buffer), s.channel);;

(*****************************************************************************
 * FUNCTION  : [readChar] is public, see interface (stream.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let readChar s = 
  if isSome !(s.buffer) then
    let c = valOf !(s.buffer) in
    (s.buffer := NONE;
     c)
  else
    try 
      input_char s.channel
    with
      End_of_file -> Error.io "stream" "end of stream";;
      
(*****************************************************************************
 * FUNCTION  : [isEof] is public, see interface (stream.mli) for description.
 * COMMENTS  : 
 *****************************************************************************)
let isEof is =
  isEof(peek is);;

(*****************************************************************************
 * FUNCTION  : [skipWhites] is public, see interface (stream.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let skipWhites is =
  let next = ref(peek is) in
  while isWhite(!next) do 
    (ignore(readChar(is));
     next := peek(is))
  done;;
    
(*****************************************************************************
 * FUNCTION  : [readInt] is public, see interface (stream.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let readInt is =
  let zeroCode = int_of_char '0' in
  let i = ref 0 in
    if isDigit(peek is) then
      begin
	while isDigit (peek is) do
	  i := !i*10+((int_of_char (readChar is)) - zeroCode)
	done;
	!i
      end
    else
      Error.io "stream" "unexpected character";;

(*****************************************************************************
 * FUNCTION  : [readString] is public, see interface (stream.mli) for 
 *           : description.
 * COMMENTS  : 
 *****************************************************************************)
let readString is size =
  let i = ref 0 in
  let s = String.create size in
  (while !i < size && not(isEof is) do
    begin
      s.[!i] <- readChar is;
      incr(i)
    end
  done;
   if !i = size then
     s
   else
     Error.io "stream" "end of stream");;

(*****************************************************************************
 * End of file.
 *****************************************************************************)
