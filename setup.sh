#!/bin/bash
read -p "Need your root password to install some packages:" password
curr_dir=$(pwd)
ls | while read -r name; do
    if [ -d "$name" ]; then
        echo "------"
        echo "Setting up $name ..."
        cd $name
        ./setup.sh $password
        cd $curr_dir
        echo "$name set."
    fi
done
