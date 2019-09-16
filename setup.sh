#!/bin/bash
plugins=(
    shell
    git
    vim
    tmux
    pyenv
)

read -p "Need your root password to install some packages:" password
curr_dir=$(pwd)
for name in ${plugins[@]}; do
    if [ -d "$name" ]; then
        echo "------"
        echo "Setting up $name ..."
        cd $name
        ./setup.sh $password
        cd $curr_dir
        echo "$name set."
    fi
done
