#!/usr/bin/env sh

formulae=(
  "git"
  "chruby"
  "postgresql"
  "ruby-build"
  "tmux"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}..."
  brew install $formula
done
