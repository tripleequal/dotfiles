#!/usr/bin/env zsh

echo "\n<<< Setup Finder Defaults >>>\n"

# Finder settings
defaults write com.apple.Finder AppleShowAllFiles true
defaults write com.apple.finder ShowPathbar -bool true

# System Preferences > Dock
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock tilesize -int 16
defaults write com.apple.dock largesize -int 16
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.25
defaults write com.apple.dock autohide-delay -float 0.1

# System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag (NOTE: The GUI doesn't update)
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# Finish macOS Setup
killall Finder
killall Dock
echo "\n<<< macOS Setup Complete.
    A logout or restart might be necessary. >>>\n"

