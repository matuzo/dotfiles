#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum


# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/php/php55 --with-gmp

# Install other useful binaries.
brew install ack
brew install git
brew install mcrypt
brew install imagemagick --with-webp
brew install rename
brew install tree
brew install webkit2png
brew install caskroom/cask/brew-cask

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Remove outdated versions from the cellar.
brew cleanup
