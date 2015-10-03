if [ ! -f $HOME/.gitconfig ]; then
  echo "Linking .gitconfig..."
  ln -s $PWD/git/gitconfig $HOME/.gitconfig
else
  echo "Not updating .gitconfig..."
fi
