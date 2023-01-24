#!/bin/bash

for i in $(ls bin/)
do
    rm -f ~/.local/bin/$i
done

if [ ! -z "$SHALL_DIR" ]
then
    echo "Please remove SHALL_DIR from your .bashrc file."
fi
