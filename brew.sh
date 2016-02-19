#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Get the latest formulas.
brew update
brew upgrade

# Install bash-completion
brew install bash-completion

# Install programs
brew install ack
brew install git
brew install httpie
brew install imagemagick --with-webp
brew install lynx
brew install mysql
brew install node
brew install tmux
brew install tree
brew install vim --override-system-vi
brew install wget --with-iri

# Perform final cleanup and remove any old package versions.
brew cleanup

