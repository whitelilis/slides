#!/bin/sh

 part.pl $1 '^(1\s){10,}.*' 1 '^\"Admi.*' 1 | sed -e '1,3 d; $ d' | sed -e '$ d' | sed -e '$ d'

