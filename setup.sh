#!/usr/bin/env sh

if [[ $* != *-y* ]]
then
    echo
    read -p "WARNING: this script will download vim-plug and overwrite existing rc files. Do you want to continue? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
fi

# Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create symlinks in the home directory to the version controlled files in here
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ln -sf ${SCRIPTPATH}/.tmux.conf ~/.tmux.conf
ln -sf ${SCRIPTPATH}/.vimrc ~/.vimrc
ln -sf ${SCRIPTPATH}/nvim ~/.config/nvim
