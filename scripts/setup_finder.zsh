#!/usr/bin/env zsh

echo "\n<<< Setup Finder Defaults >>>\n"

echo 'SHOW DOTFILES IN FINDER'
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

