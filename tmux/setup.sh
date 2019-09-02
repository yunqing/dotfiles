#!/bin/bash
# install tmux
if [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install tmux
else
    printf "%s\n" "$1" | sudo --stdin apt install -y tmux
fi

# clone tpm
mkdir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# set config
cp .tmux.conf $HOME
tmux source ~/.tmux.conf
