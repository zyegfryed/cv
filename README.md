# About

Latest version of my Curriculum Vitae, typesetted in Helvetica, using colors from Flat-UI and embedding FontAwesome symbols.

A `print` option is available to render in black and white and revert the header to dark on light when printing on paper is needed.

Uses TikZ for the header, XeTeX and fontspec to use Helvetica Neue, biblatex to print my publications and textpos for the aside.


# Usage

To compile both desktop and print versions::

    make

To compile the desktop version only:

    make screen

To compile the print version only::

    make print

Cleaning your working environment::

    make clean
