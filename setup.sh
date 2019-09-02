#!/bin/bash
ls | while read -r name; do
    if [ -d "$name" ]; then
        echo "------"
        echo "Setting up $name ..."
        $name/setup.sh
        echo "$name set."
    fi
done
