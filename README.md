# About

Latest version of my Curriculum Vitae, typesetted in Helvetica, using colors from Flat-UI and embedding FontAwesome symbols.

A `print` option is available to render in black and white and revert the header to dark on light when printing on paper is needed.

Uses TikZ for the header, XeTeX and fontspec to use Helvetica Neue, biblatex to print my publications and textpos for the aside.


# Usage

To compile both desktop and print versions:

    make

To compile the desktop version only:

    make screen

To compile the print version only:

    make print

Cleaning your working environment:

    make clean


# Theming

To use a different look'n'feel, just write a document class in the same
directory than the ``cv.tex`` file. Then, set the ``CV_THEME`` environment
variable to the theme file basename - the filename without the ``*.cls``
extension.

For example, let's assume you've defined a ``mytheme.cls`` - you can start by
copy/pasting the friggeri.cls and modify what you need. Then, to use our
theme we'll invoke the compilation command like so:

    CV_THEME=my_theme make
