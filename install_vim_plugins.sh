#!/bin/bash

TARGET_DIR="$HOME/.vim_runtime/sources_non_forked"

if ! [ -d "$TARGET_DIR" ]; then
    echo "Error. Folder '$TARGET_DIR' doesn't exists."
    exit
fi

if [ $# != 1 ]; then
    echo "Usage: $(basename $0) LIST_FILE"
    echo "Please provide the file containing git address of vim plugins"
    exit
fi

CURRENT_DIR=$(pwd)

cat $1 | while read -r line; do echo "Installing $line ..." \
    && cd $TARGET_DIR \
    && git clone $line; done

echo "Done."
