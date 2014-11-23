# matuzo’s dotfiles

## Installation

These files are mostly for me, but you may find some interesting settings inside. If you want to start your own dotfiles repo, I would recommend to fork [mathiasbynens](https://github.com/matuzo/dotfiles)'s.

Beside my own scripts and settings, most of the stuff I have used is copied from or inspired by the dotfiles of [mathiasbynens](https://github.com/matuzo/dotfiles), [cowboy](https://github.com/cowboy/dotfiles/) and [holman](https://github.com/holman/dotfiles/).


## Files

A quick overview of the files

### [init](init)

Terminal and iTerm themes  
Sublime settings and packages

### [.aliases](.aliases), [.functions](.functions)

Useful aliases and functions

Examples:  
	
	alias s="cd ~/Sites"
	alias ..="cd .."
	
	# Hide/show all desktop icons (useful when presenting)
	alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
	alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
	

### [.gitconfig](.gitconfig)

Git settings

Examples:

	# View the current working tree status using the short format
	s = status -s
	
	# Commit all changes
	ca = !git add -A && git commit -av

### [.osx](.osx)

OSX defaults

Examples:

	# Hot corners
	# Top right screen corner → Mission Control
	defaults write com.apple.dock wvous-tr-corner -int 2
	defaults write com.apple.dock wvous-tr-modifier -int 0
	
	# Don’t display the annoying prompt when quitting iTerm
	defaults write com.googlecode.iterm2 PromptOnQuit -bool false

### [brew.sh](brew.sh)

Installation of npm, mcrypt, etc. via brew

Examples:

	brew install tree
	
	brew install node

### [brew_casks.sh](brew_casks.sh)

Installation of browsers and other software via brew cask

Examples:

	for cask in "${casks[@]}"; do
		brew cask install $cask --appdir=/Applications
	done
	
	brew cask cleanup
	brew cask alfred link

### [npm.sh](npm.sh)

Installation of bower, gulp and yo.
	