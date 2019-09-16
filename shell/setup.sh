#!/bin/bash
# install zsh
if [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install zsh
else
    printf "%s\n" "$1" | sudo --stdin apt install -y zsh
fi

# clone zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# copy official rcfile
shopt -s extglob
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/!(README.md); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# copy customised rcfile
cp .* $HOME
cat patchrc >> $HOME/.zshrc
