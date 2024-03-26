#!/bin/bash

if [ -f "$1.tex" ]; then
  pdflatex "$1.tex"
  biber $1
  pdflatex "$1.tex"
  pdflatex "$1.tex"
else
  echo "file $1.tex not found, please try again with a valid filename"
fi
