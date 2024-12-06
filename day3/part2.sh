#!/bin/bash

tr -d '\n' < day3.txt \
| sed 's/do()/\n/g' \
| sed "s/don't().*//" \
| grep -o 'mul([0-9]*,[0-9]*)' \
| tr -d 'ul()\n' \
| tr 'm,' '+*'  \
| cut -c 2- \ # Remove the first +´
| bc
