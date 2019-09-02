#!/bin/bash
# install git
if [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install git
else
    printf "%s\n" "$1" | sudo --stdin apt install -y git
fi

# set config
cp ".gitconfig" $HOME
git config --global alias.tree \
    "log --graph "\
    "--pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) "\
    "%C(bold blue)<%an>%Creset%n' "\
    "--abbrev-commit --date=relative --branches"
