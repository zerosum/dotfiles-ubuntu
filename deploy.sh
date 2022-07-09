#! /usr/bin/env bash

WORKDIR=$(cd $(dirname $0); pwd)

ln -snfv $WORKDIR/_zshrc $HOME/.zshrc
ln -snfv $WORKDIR/.zsh $HOME/.zsh

exec $(command -v zsh) -l
