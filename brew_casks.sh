# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew casks need Homebrew to install." && return 1

e_header "Installing Homebrew casks: ${casks[*]}"

# Homebrew casks
casks=(
  # Applications
  adobe-creative-cloud
  alfred
  dropbox
  evernote
  firefox
  firefoxdeveloperedition
  jdownloader
  google-chrome
  licecap
  iterm2
  keepassx
  mou
  netnewswire
  opera
  sequel-pro
  sizeup
  spotify
  sublime-text3
  teamviewer
  the-unarchiver
  timings
  transmit
  vlc
)

for cask in "${casks[@]}"; do
	brew cask install $cask --appdir=/Applications
done
brew cask cleanup
brew cask alfred link