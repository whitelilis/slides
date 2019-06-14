#!/bin/sh

grep "==>" result.txt | sed -e 's/==>//;s/[^=]//g;s/=/=\n/g' | sort | uniq -c

