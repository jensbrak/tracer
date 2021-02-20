##############################################################################
# FILE      : Makefile
# CONTENTS  : Makefile for tracer.
# AUTHOR(S) : Jens Olsson <jenso@csd.uu.se>
# EDITED    : Time-stamp: <2000-02-15 13:57:15 jenso>
# COMMENTS  : This file is using a Makefile template created by Marcus Mottl.
#           : Why do the job again if somebody else has done it before :)
#           : So, see generic Ocaml-makefile, Makefile.ocaml, for 
#           : implementation or visit the homepage of Marcus Mottl where a
#           : distribution of the Makefile can be downloaded:
#           : http://miss.wu-wien.ac.at/~mottl/ocaml_sources/intro.html
# USAGE     : Type 'make help' at prompt to see the rules intended to be used.
##############################################################################

##############################################################################
# Set up variables to use
##############################################################################

# Base directory 
BASEDIR=..

# Where to install the executable
#BINDIR=$(HOME)/bin
BINDIR=$(BASEDIR)/bin

# Other directories
SCRIPTDIR=./scripts

# Set the Ocamldistribution related variables
export OCAMLMAKEFILE = Makefile.ocaml
export OCAMLLIBPATH = /home/harpo/csd/jenso/ocaml/lib

# The compilers to use
OCAMLC		= ocamlc.opt
OCAMLOPT	= ocamlopt.opt

# Compiler flags
OCAMLFLAGS	= -unsafe -noassert
OCAMLNCFLAGS	= -inline 4 #-ccopt -static
OCAMLBCFLAGS	= 
OCAMLLDFLAGS	= 
LDFLAGS		= 

# Extra libraries
LIBS     	= unix
CLIBS   	= unix

# File defining source code files
SOURCESFILE	= Sources

# The resulting executable
RESULT	 	= tracer
#BCSUFFIX	= -bytecode
#NCSUFFIX	= -`uname -p`-`uname -s`

# The source(code) files (Name SOURCES defined by $(SOURCESFILE))
-include $(SOURCESFILE) 

##############################################################################
# Include the Makefile that does the real job
##############################################################################
-include $(OCAMLMAKEFILE)

##############################################################################
# Additional rules
##############################################################################

# Rule to make ps version of source code (files printed in order of
# "appearance").
src-ps:
		a2ps -A -Ecaml -4 -o $(RESULT)-src.ps $(SOURCES) 
ps:		src-ps

# Rule to count number of source code lines (without comments or empty lines)
src-count-lines:
		@echo "Number of lines (not counting comments):"
		@cat $(SOURCES) \
		| sed -f $(SCRIPTDIR)/skip-whitespace.sed \
		| sed -f $(SCRIPTDIR)/skip-comments-block.sed \
		| sed -f $(SCRIPTDIR)/skip-comments-standalone.sed \
		| wc -l
cl:		src-count-lines

# Rule to count number of source code lines (with comments and empty lines)
src-count-lines-all:
		@echo "Number of lines (counting comments):"
		@cat $(SOURCES) | wc -l
cla:		src-count-lines-all

# Install the tracer
install:
		@echo "Installing $(RESULT) in directory $(BINDIR)"
		@cp -f $(RESULT) $(BINDIR)


# Rule to make a more comprehensive sweep of generated files. More or less
# replaces the rule backup in the ocaml makefile.
sweep:		clean
		rm -f *~ .*~ core *.ps *.gz *.dump

help:
		@echo "Usage: make <rule>"
		@echo "Rules are:"
		@echo "  bc:         Produce a bytecode executable (default rule)"
		@echo "  nc:         Produce a nativecode executable"
		@echo "  clean:      Remove all produced files"
		@echo "  sweep:      Do a 'clean' and also remove backup and trash files"
		@echo "  ps:         Produce a postcript version of the sourcecode (a2ps)"
		@echo "  cl:         Print number of lines in code (excluding comments)"
		@echo "  cla:        Print number of lines in code (including comments)"
		@echo "  pbc:        Produce a profiled bytecode executable"
		@echo "  install     Install the latest produced binary"
		@echo "  help:       Print this message"


##############################################################################
# End of file
##############################################################################
