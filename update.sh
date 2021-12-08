#!/bin/bash

cp -r ~/.zshrc ~/.bashrc ~/.tmux.conf ~/.config/nvim/init.vim ~/.aliases ~/.scripts ./

git add . && git commit -m "$(date)"
git push
