# Install Homebrew.
  e_header "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Exit if, for some reason, Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Homebrew failed to install." && return 1

e_header "Updating Homebrew"
brew doctor
brew update

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Install more recent versions of some OS X tools.
# brew tap homebrew/dupes
# brew tap homebrew/versions
# brew tap homebrew/homebrew-php
# brew install php55

# Install other useful binaries.
brew install mcrypt
#brew install imagemagick --with-webp
brew install rename
brew install tree
brew install webkit2png
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Remove outdated versions from the cellar.
brew cleanup
