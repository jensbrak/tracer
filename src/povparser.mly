%{
(*****************************************************************************
 * FILE      : povparser.mly
 * CONTENTS  : Grammar rules for building a parsetree of the simplified 
 *           : PovRay-grammar used.
 * AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
 * EDITED    : Time-stamp: <2000-01-10 14:40:35 jenso>
 * COMMENTS  : 
 *****************************************************************************)
open Option;;
  
(* 'Global' binding for the parsetree *)
let parseTree = Povparsetree.create();;
      
(* Some shortcuts *)
let addCamera = Povparsetree.addCamera parseTree;;
let addLight = Povparsetree.addLight parseTree;;
let addShape = Povparsetree.addShape parseTree;;
let addBackground = Povparsetree.addBackground parseTree;;

%}

/* Declarations (of tokens) */

%token LBRACE RBRACE LANGLE RANGLE LPAREN RPAREN COMMA
%token <float> FLOAT
%token <int> INTEGER
%token <string> STRING
%token EOF
%token CAMERA LOCATION SKY LOOK_AT
%token SPHERE POLE EQUATOR
%token PLANE PLANE_POINT
%token TRIANGLE TRIANGLE_POINT
%token PARALLELOGRAM PARALLELOGRAM_POINT
%token LIGHT_SOURCE INTENSITY
%token BACKGROUND
%token PIGMENT COLOR BITMAP
%token FINISH DIFFUSE REFLECTION
%token COLR RGB RED GREEN BLUE
%token PPM

/* Declarations (of entrypoint & and its type) */
%start scene             /* the entry point */
%type <Povparsetree.parsetree> scene

%%

/* Grammar rules */
/* See file ../POVSYNTAX.txt for a simplified grammar description */

scene:
    specs EOF
    {     
      parseTree
    } 
  ;
  
specs:
    spec
    {
      (* Read a spec as a sideeffect (parseTree updated) *)
      ()
    } 
  | spec specs
    {
      (* Read specs as a sideeffect (parseTree updated) *)
      ()
    } 
  ;

spec:
    camera 
    { 
      let camera = $1 in
      addCamera(camera)
    } 
  | light
    {
      let light = $1 in
      addLight light
    } 
  | background
    {
      let background = $1 in
      addBackground background
    } 
  | shape
    {
      let shape = $1 in
      addShape shape
    } 
  ;

camera:
    CAMERA
    LBRACE
    LOCATION
    vectorPos
    SKY
    vectorDir
    LOOK_AT
    vectorPos
    RBRACE
    {
      let position = $4 in
      let sky = $6 in
      let lookAt = $8 in
      Camera.create position sky lookAt
    } 
  ;
    
light:
    LIGHT_SOURCE
    LBRACE
    vectorPos
    RBRACE
    {
      let position = $3 in
      Light.create position
    } 
  ;
    
background:
    BACKGROUND
    LBRACE
    color
    RBRACE
    {
      let c = $3 in
      c
    } 
  ;

shape:
    plane
    {
      $1
    } 
  | sphere
    {
      $1
    } 
  | triangle
    {
      $1
    }
  | parallelogram
    {
      $1
    }
  ;

sphere:
    SPHERE
    LBRACE
    vectorPos
    COMMA
    number
    sphereOrient
    objectMods
    RBRACE
    {
      let center = $3 in
      let radius = $5 in
      let (pole, equator) = $6 in
      let (pigment, finish) = $7 in
      let surface = Surface.create pigment finish in
      Shape.createSphere center radius pole equator surface
    } 
  ;

sphereOrient:
    /* epsilon */
    {
      let p = Sphere.defaultPole in
      let e = Sphere.defaultEquator in
      (p, e)
    } 
  | POLE
    vectorDir
    EQUATOR
    vectorDir
    {
      let p = $2 in
      let e = $4 in
      (p, e)
    } 
  ;

plane:
    PLANE
    LBRACE
    vectorDir
    COMMA
    number
    objectMods
    RBRACE
    {
      let n = $3 in
      let d = $5 in
      let (p, f) = $6 in
      let s = Surface.create p f in
      Shape.createPlane n d s 
    }
  | PLANE_POINT
    LBRACE
    vectorPos
    COMMA
    vectorDir
    objectMods
    RBRACE
    {
      let point = $3 in
      let n = $5 in
      let (p, f) = $6 in
      let s = Surface.create p f in
      Shape.createPlanePoint point n s 
    }
  ;

triangle:
    TRIANGLE
    LBRACE
    vectorPos
    COMMA
    vectorPos
    COMMA
    vectorPos
    objectMods
    RBRACE
    {
      let c1  = $3 in
      let c2 = $5 in
      let c3 = $7 in
      let (p, f) = $8 in
      let s = Surface.create p f in
      Shape.createTriangle c1 c2 c3 s
    } 
  | TRIANGLE_POINT
    LBRACE
    vectorPos
    COMMA
    vectorPos
    COMMA
    vectorPos
    objectMods
    RBRACE
    {
      let c  = $3 in
      let sA = $5 in
      let sB = $7 in
      let (p, f) = $8 in
      let s = Surface.create p f in
      Shape.createTrianglePoint c sA sB s
    } 
  ;

parallelogram:
    PARALLELOGRAM
    LBRACE
    vectorPos
    COMMA
    vectorPos
    COMMA
    vectorPos
    objectMods
    RBRACE
    {
      let c1  = $3 in
      let c2 = $5 in
      let c3 = $7 in
      let (p, f) = $8 in
      let s = Surface.create p f in
      Shape.createParallelogram c1 c2 c3 s
    } 
  | PARALLELOGRAM_POINT
    LBRACE
    vectorPos
    COMMA
    vectorPos
    COMMA
    vectorPos
    objectMods
    RBRACE
    {
      let c  = $3 in
      let sA = $5 in
      let sB = $7 in
      let (p, f) = $8 in
      let s = Surface.create p f in
      Shape.createParallelogramPoint c sA sB s
    } 
  ;
    
objectMods:
    pigment
    finish
    {
      let p = $1 in
      let f = $2 in
      (p, f)
    } 
  ;

pigment:
    /* epsilon */
    {
      let p = Pigment.defaultPigment in
      p
    } 
  | PIGMENT
    LBRACE
    pigspec
    RBRACE
    {
      let p = $3 in
      p
    } 
  ;

pigspec:
    color
    {
      let c = $1 in
      Pigment.createColor c
    }
  | bitmap
    {
      let b = $1 in
      Pigment.createBitmap b
    } 
  ; 
    
bitmap:
    BITMAP
    LBRACE
    PPM
    STRING
    RBRACE
    {
      let f = $4 in
      Ppm.readFile f
    }
  ;

finish:
    /* epsilon */
    {
      let f = Finish.defaultFinish in
      f
    } 
  | FINISH
    LBRACE
    diffuse
    reflection
    RBRACE
    {
      let d = $3 in
      let r = $4 in
      Finish.create d r 
    }   
  ;

diffuse:
    /* epsilon */
    {
      let d = Finish.defaultDiffuse in
      d
    }
  | DIFFUSE
    number
    {
      let d = $2 in
      d
    }
  ;

reflection:
    /* epsilon */
    {
      let r = Finish.defaultReflection in
      r
    } 
  | REFLECTION
    number
    {
      let r = $2 in
      r
    } 
  ;

color:
    COLOR
    RGB
    vector
    {
      let v = $3 in
      let r = Vector.x v in
      let g = Vector.y v in
      let b = Vector.z v in
      let c = Color.create r g b in
      if Color.isNormalized c then
	c
      else
	Povparsetree.semanticError "illegal color value"
    }
  | COLOR
    RED
    number
    GREEN
    number
    BLUE
    number
    {
      let r = $3 in
      let g = $5 in
      let b = $7 in
      let c = Color.create r g b in
      if Color.isNormalized c then
	c
      else
	Povparsetree.semanticError "illegal color value"
    }
  ;

vectorPos:
    vector
    {
      let v = $1 in
      v
    }
  ;

vectorDir:
    vector
    {
      let v = $1 in
      if not(Vector.isZero v) then
	v
      else
	Povparsetree.semanticError "illegal direction vector"
    } 
  ;
   
vector:
    LANGLE
    number
    COMMA
    number
    COMMA
    number
    RANGLE
    {
      let x = $2 in
      let y = $4 in
      let z = $6 in
      Vector.create x y z  
    }
  ;

number:
    FLOAT
    {
      let x = $1 in
      x
    }
  | INTEGER
    {
      let x = $1 in
      float x
    }
  ;
    
%%
    
(* Trailer *)

(* Why can't the interfaces of code placed here be included in the
   generated .mli file?!? Sigh. *)
    
(*****************************************************************************
 * End of file
 *****************************************************************************)
