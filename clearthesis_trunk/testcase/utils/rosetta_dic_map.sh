#!/bin/sh

 part.pl $1 '^(1\s){10,}.*' 2 '^\"Rosetta.*' 1  | sed -e '1,3 d'

