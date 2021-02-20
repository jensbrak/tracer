Readme
======

Index
-----

Introduction
What is ray tracing?

Prerequisites
Files & directories
Installation

History
Performance

Functionality
Usage
Syntax of description files

Credits
Bugs & feedback


Introduction
------------

This is the readme file for the Tracer, version 1.01. The file
describes the tracer, why it was made, how it is used and how the
files in this distribution are organized.

The Tracer (no "real" name has been chosen. The name 'tracer' is kept
for "historical" reasons) is a very simple yet fully functional
ray tracer written on Objective ML (Ocaml). 

I release this code as I'd like to share my ideas and work. I hope
someone will enjoy it. You are free to use the code however You like
but I'd like to be credited if You use the program or parts of it :)

If You want to use the code , and especially if You'd like to continue
to develop the tracer I'd like to hear from You. Not because I want to
have control over the program but because I'm curious and
interested. Besides that, I am currently planning a more realistic
implementation (from scratch) of a more usable ray tracer so one might
say that this tracer is already under further development.

I give no guarantees what so ever and I take no responsibility for
what the program may do if used. I really don't know what could go so
wrong but don't come to me whining if something goes wrong ;-)


What is Ray Tracing?
--------------------

Instead of writing a short tutorial I'd like to redirect:

  http://www.povray.org

look for the FAQ or go directly to the relevant document:

  http://www.povray.org/documents/rayfaq/part1/faq-doc-2.html

This document describes ray tracing in short.


Prerequisites
-------------

The Tracer is tested with Objective ML version 2.04 but should be
compatible with version 2.00 and up. Ocaml can be downloaded from

  http://caml.inria.fr

The tracer uses the Unix library of Ocaml. In addition to this,
a standard make utility is required. 


Files & directories
-------------------

The files and directories are structured as follows:

  ./bin/			directory for binaries
  ./examples/			some example scene description files
				and referenced textures
  ./src/			source code directory
				See IMPLEMENTATION.txt for description
				of the the files in this directory
  ./BUGS.txt			bugs and shortcomings not fixed
  ./IMPLEMENTATION.txt		a short implementation description
  ./INSTALL.txt			installation instructions
  ./POVSYNTAX.txt		description of the modified PovRay
				description file syntax and grammar
  ./README.txt			this file
  ./TODO.txt			planned modifications and updates
  ./HISTORY.txt			short log of changes (sorted by version
				number)


Installation
------------

See the file INSTALL.txt for installation instructions.


History
-------

Many programmers hesitate to use functional languages as they are
considered purely academic with no or little real life use. It is also
common to believe that functional languages are slow, hard to learn
and understand. This program tries to show an interesting working
example that this is far from the truth.

Having written a simple ray tracer in C (as an assignment in a course)
it was very tempting to see how much of a competition an equivalent
tracer written in (S)ML could give the C implementation. The C
implementation was quite optimized, utilizing several optimizations
provided by the C language and the C-compiler used. No algorithmic
speedups other than obvious fixes of the code where done (beyond the
scope of the course attended).

Even though the design of this particular ray tracer is somewhat
different than the original C tracer the same algorithms are used so
the game is considered to be fair. 

The choice of Ocaml instead of other implementations of ML very much
depends on personal taste but the fact that Ocaml produces fast native
code for several platforms is not negligible. And as a matter of
fact, incomplete implementations in both Mosml and Sml/NJ were made
and Ocaml performed best. This was some time ago so there may be
better versions of the compilers out now.


Performance
-----------

Simple benchmarking shows that the ML implementation performs
impressively good (in my opinion). The goal was to have a tracer
running no worse than twice as slow as the optimized C version but I
was expecting it to be about 10 times slower or worse. The initial
benchmarks showed that the native code version (running on a Sparc)
was within the limits of the goal!  After some minor modifications to
the ML code the tracer now runs 20% slower than the C version. Still
there may be many ways to improve the ML tracer without major
modifications (that applies to the C version as well).

One notice: the ML code is in my opinion far more readable that the
corresponding C code. This is a matter of opinion and it depends on
the programmer that writes the code but there's no way around the fact
that the ML tracer consists of about 1750 lines of code (not counting
comments) and the previously made C tracer with the almost exact same
functionality has approximately 12500 lines of code (without comments
as well)...

Comparing the tracer to PovRay wouldn't be entirely fair as PovRay
uses several algorithms to speed up tracing. No matter how good
compiler You have some clever algorithms will still win the
match. However, and I haven't tested this, if one could turn off all
optimizations in PovRay it may be interesting to compare.


Functionality
-------------

This tracer is very limited. The purpose of it was not to make another
PovRay (or similar). The tracer reads a modified subset of the PovRay
description format and is limited to three basic shapes: spheres,
triangles, parallelograms and planes. Only diffuse lightning is
implemented and objects can only have either single colors or bitmaps
as textures.  Light sources only come in one flavor: point
lights. Textures are read as both ascii and binary PPM bitmaps and the
traced images are written in binary PPM format.

Still, the tracer is capable to trace quite impressive pictures.
As with most ray tracers, the limitations are in the mind of
the artist and his tools to model the world :) See some of the
examples and judge Yourself.


Usage
-----

The tracer is command line driven, ie it is invoked from a shell.
This is a what You'll get by invoking the tracer with the -help
option:

  Usage: tracer [options] filename
  Produces an image by ray tracing a scene described in a file read
  from stdin.
  The description file language is a subset of the PovRay format and the
  resulting bitmap is in binary PPM format.
  At least 3 of 4 of -x -y -w -h has to be set. All 4 may cause image to look
  distorted.
  Options are:

    -q  : Quickmode: don't use reflection and shadowing. Default is off
    -t  : Show time spent tracing, in ms. Default is off
    -r d: Use reflection depth d. Default is 5
    -z x: Use camera zoom value of x. Default is 1.0
    -w x: Use camera width x
    -h y: Use camera height y
    -x i: Create bitmap with width i pixels
    -y j: Create bitmap with height j pixels
    -p t: Show progress indicator t, t can be: counter, spinner, percent or bar

A typical use would be:

    ./tracer -z 1 -w 1 -h 1 -x 240 -t -p percent picture.ppm < scene.pov

where nicepicture.pov is a PovRay description file (with limited
syntax) and nicepicture.ppm is the resulting bitmap.

The zoom (-z) works as follows: greater zoom value results in smaller
objects (ie zoom out).

The width and height (-w and -h) describes the relation between the
world and the picture, ie how many "world coordinates" per pixel there
is.

The bitmap height and width are the dimensions of the resulting
bitmap, in pixels.

The reflection depth tells how many times a ray (as in ray-tracing)
may "bounce around" in the world before it is considered to have made
enough contribution to the resulting bitmap. Greater value may lead to
better image quality but not necessarily. It will for sure slow down
the tracing process.

The quickmode option (-q) can be used to test a more complex scene
before the final bitmap is produced. No shadows or reflections will be
visible, only the raw objects. On the other hand tracing is much
faster.

The timer (-t) can be used to benchmark the tracer. The timer only
measure time spent tracing; reading PovRay description file and its
referenced textures as well as writing the resulting bitmap is not
measured.


Syntax of description files
---------------------------

The syntax of the description files can be found in POVSYNTAX.txt.


Credits
-------

The makefile in use is made by Markus Mottl. See ./src/Makefile for
further information.

Of course, the Ocaml team for making such a good piece of
software available for us to use freely.

The PovRay team for writing PovRay.

Last, Cons T. Åhs for the course Methods of Programming II and the
assigment(specification) in the course. Without them this tracer
wouldn't exist.


Bugs & feedback
---------------

Feedback and comments are encouraged! If You find bugs You are also
welcome with them but the program is not written to be perfect so I
really don't mind a few oddities. But it is always nice to improve the
program :)

I am especially interested in hints to make the program faster by
using the compiler better.


Jens Olsson
jenso@csd.uu.se
http://www.csd.uu.se/~jenso

=============
End of Readme
