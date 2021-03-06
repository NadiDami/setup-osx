#!/usr/bin/env sh

# Install Homebrew
if ! command -v brew > /dev/null 2>&1; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew is already available... skipping the installation"
  echo "Updating Homebrew..."
  brew update
fi

# Install zsh
if command -v `zsh --version` > /dev/null 2>&1; then
  echo "Installing Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  # Make Zsh default shell
  chsh -s /usr/local/bin/zsh
else
  echo "Zsh is already available...skipping the installation"
  echo "Upgrading Zsh..."
  upgrade_oh_my_zsh
fi

# Main installation
if [ -d ~/.setup-osx ]; then
  cd ~/.setup-osx
  git pull
else
  git clone https://github.com/nadidami/setup-osx.git ~/.setup-osx
  cd ~/.setup-osx
fi

sh install_brews.sh
sh install_casks.sh
sh install_postgres.sh
sh install_ruby.sh

sh setup_zsh.sh
sh setup_git.sh
sh setup_vim.sh
