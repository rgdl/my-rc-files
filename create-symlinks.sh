#!/usr/bin/env sh

# Create symlinks in the home directory to the version controlled files in here

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ln -sf ${SCRIPTPATH}/.tmux.conf ~/.tmux.conf
ln -sf ${SCRIPTPATH}/.vimrc ~/.vimrc
