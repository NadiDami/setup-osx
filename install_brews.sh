#!/usr/bin/env sh

formulae=(
  "git"
  "chruby"
  "postgresql"
  "ruby-install"
  "the_silver_searcher"
  "tmux"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}..."
  brew install $formula
done
