#!/bin/bash
# install vim
if [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install vim
else
    printf "%s\n" "$1" | sudo --stdin apt install -y vim
fi

# clone amix/vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# clone plugins
TARGET_DIR="$HOME/.vim_runtime/sources_non_forked"
if ! [ -d "$TARGET_DIR" ]; then
    echo "Error. Folder '$TARGET_DIR' doesn't exists."
    exit
fi
LIST_FILE="vim-plugins.list"
CURRENT_DIR=$(pwd)
cat $LIST_FILE | while read -r line; do echo "Installing $line ..." \
    && cd $TARGET_DIR \
    && git clone $line; done

# copy config file
CONFIG_FILE="my_configs.vim"
cp "$CONFIG_FILE" "$HOME/.vim_runtime/my_configs.vim"
