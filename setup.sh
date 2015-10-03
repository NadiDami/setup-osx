# Install Homebrew
if ! command -v brew > /dev/null 2>&1; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew is already available... skipping the installation"
  echo "Updating Homebrew..."
  brew update
fi

# Install Caskroom
brew install caskroom/cask/brew-cask

# Install zsh
if ! command -v zsh > /dev/null 2>&1 ; then
  echo "Installing Zsh..."
  brew install zsh
  # Make Zsh default shell
  chsh -s /usr/local/bin/zsh
else
  echo "Zsh is already available...skilling the installation"
  echo "Updating Zsh..."
  brew upgrade zsh
fi

# Main installation
if [ -d ~/.setup-osx ]; then
  cd ~/.setup-osx
  git pull
else
  git clone https://github.com/nadidami/setup-osx.git ~/.setup-osx
  cd ~/.setup-osx
fi

sh main_installation.sh



