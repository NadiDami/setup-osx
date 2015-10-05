#!/usr/bin/env sh

formulae=(
  "ag"
  "apg"
  "git"
  "chruby"
  "postgresql"
  "ruby-install"
  "tmux"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}..."
  brew install $formula
done
