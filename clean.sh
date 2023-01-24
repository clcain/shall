#!/bin/bash

if [ -z "$SHALL_DIR" ]
then
    echo "Please define SHALL_DIR in your .bashrc file."
fi

rm -r $SHALL_DIR/logs/*
