#!/bin/bash

grep -o 'mul([0-9]*,[0-9]*)' day3.txt \
|tr -d 'ul()\n' \
|tr 'm,' '+*' \
| cut -c 2- \ # Remove the first +
| bc
