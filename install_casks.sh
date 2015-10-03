#!/usr/bin/env sh

casks=(
  "1password"
  "caffeine"
  "dash"
  "dropbox"
  "evernote"
  "firefox"
  "flux"
  "flycut"
  "google-chrome"
  "iterm2"
  "s3cmd"
  "skype"
  "slack"
  "things"
  "vlc"
)

for cask in ${casks[@]}
do
  echo "Installing: ${cask}"
  brew cask install $cask
done
