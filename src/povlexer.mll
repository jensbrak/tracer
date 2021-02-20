(*****************************************************************************
 * FILE      : povlexer.mll
 * CONTENTS  : Lexer rules for building tokens of the simplified PovRay-
 *           : grammar used.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:41:33 jenso>
 * COMMENTS  : 
 *****************************************************************************)
{
  open Povparser;;

  (* Exception for lexer *)
  exception LexicalError of string;;

  (* Raise exception LexerError *)
  let lexicalError s = raise(LexicalError(s));;

  (* cut the first and last character of a string. *)
  let clipString s = String.sub s 1 ((String.length s) - 2);;
} 

(* Abbreviate the regexps in use (for readability and flexibility) *)
let newline    =  '\n'
let comments   =  "//"[^'\n']*'\n'
let whitespace =  "\t" | " "
let digit      = ['0'-'9']
    (* Old '-'?digit+'.'digit+ *)
    (*(* New ['0'-'9']+ ('.' ['0'-'9']*)? (['e' 'E'] ['+' '-']? ['0'-'9']+)? *)
let float      = '-'?digit+'.'digit+('e'['+''-']?digit+)?
let integer    = '-'?digit+
let character  = ['a'-'z''A'-'Z']
let string     = '"'[^'"']*'"'
    
(* Main rule for the lexer *)
rule token = parse

(* Things to ignore *)
    comments		    { token lexbuf }
  | whitespace	            { token lexbuf }
  | newline                 { token lexbuf }

(* Keywords *)
  | "camera"                { CAMERA }
  | "location"              { LOCATION }
  | "sky"                   { SKY }
  | "look_at"               { LOOK_AT }
  | "sphere"                { SPHERE }
  | "pole"                  { POLE }
  | "equator"               { EQUATOR }
  | "plane"                 { PLANE }
  | "plane_point"           { PLANE_POINT }
  | "triangle"              { TRIANGLE }
  | "triangle_point"        { TRIANGLE_POINT }
  | "parallelogram"         { PARALLELOGRAM }
  | "parallelogram_point"   { PARALLELOGRAM_POINT }
  | "light_source"          { LIGHT_SOURCE }
  | "intensity"             { INTENSITY }
  | "background"            { BACKGROUND }
  | "pigment"               { PIGMENT }
  | "finish"                { FINISH }
  | "diffuse"               { DIFFUSE }
  | "reflection"            { REFLECTION }
  | "color"                 { COLOR }
  | "rgb"                   { RGB }
  | "red"                   { RED }
  | "green"                 { GREEN }
  | "blue"                  { BLUE }
  | "image_map"             { BITMAP }
  | "ppm"                   { PPM }

(* Basic keywords *)
  | "{"                     { LBRACE }
  | "}"                     { RBRACE }
  | "<"                     { LANGLE }
  | ">"                     { RANGLE }
  | "("                     { LPAREN }
  | ")"                     { RPAREN }
  | ","                     { COMMA }

(* Information carrying keywords *)
  | float                   { FLOAT(float_of_string(Lexing.lexeme lexbuf)) }
  | integer                 { INTEGER(int_of_string(Lexing.lexeme lexbuf)) }
             (* Cut the "" around the string (not part of the actual string) *)
  | string                  { STRING(clipString(Lexing.lexeme lexbuf)) }

(* Special characters *)      
  | eof                     { EOF }
  | _                       { lexicalError "illegal character" }

(*****************************************************************************
 * End of file
 *****************************************************************************)

