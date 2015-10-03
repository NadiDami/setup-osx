#!/usr/bin/env sh

sh vim/install_pathogen.sh
ruby vim/update_plugins.rb

if [ ! -f $HOME/.vimrc ]; then
  echo "Linking .vimrc..."
  ln -s $PWD/vim/vimrc $HOME/.vimrc
else
  echo "Not updating .vimrc..."
fi
