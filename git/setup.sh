#!/bin/bash
# install git
if [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install git
else
    printf "%s\n" "$1" | sudo --stdin apt install -y git
fi

# set config
cp ".gitconfig" $HOME
