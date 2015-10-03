#!/usr/bin/env sh

if [ ! -f $HOME/.zshrc ]; then
  echo "Linking .zshrc..."
  ln -s $PWD/zsh/zshrc $HOME/.zshrc
else
  echo "Not updating .zshrc..."
fi
