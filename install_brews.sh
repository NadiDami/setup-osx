#!/usr/bin/env sh

formulae=(
  "git"
  "chruby"
  "heroku"
  "postgresql"
  "ruby-install"
  "the_silver_searcher"
  "tmux"
  "yarn"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}..."
  brew install $formula
done
