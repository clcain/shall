#!/bin/bash

mkdir -p ~/.local/bin/
ln -s -f $PWD/bin/* ~/.local/bin/

shall_groups_dir=$PWD/groups/

mkdir -p ~/.ssh
touch ~/.ssh/config

if ! $(grep -q -F "$shall_groups_dir" ~/.ssh/config)
then
    echo "Include $shall_groups_dir*" >> ~/.ssh/config
fi

if [ -z "$SHALL_DIR" ]
then
    echo "export SHALL_DIR=$PWD" >> ~/.bashrc
fi
