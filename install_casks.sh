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
  "gitx"
  "google-chrome"
  "iterm2"
  "kindle"
  "moom"
  "mumble"
  "s3cmd"
  "screenhero"
  "skype"
  "slack"
  "vlc"
)

for cask in ${casks[@]}
do
  echo "Installing: ${cask}"
  brew cask install $cask
done
