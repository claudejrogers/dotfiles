#!/bin/sh

set -e

# Set computer/hostname
sudo scutil --set ComputerName "cjr"
sudo scutil --set HostName "cjr"
sudo scutil --set LocalHostName "cjr"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "cjr"

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

################################################################################
#  Finder
################################################################################

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 44" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 28" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist

################################################################################
#  Dock
################################################################################

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 33

# hide dock
defaults write com.apple.dock autohide -bool true

# Enable magnification
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -float 70.25

################################################################################
#  Safari
################################################################################

# Enable debug mode in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

################################################################################
#  XCode
################################################################################

# Add organization name
com.apple.Xcode PBXCustomTemplateMacroDefinitions.ORGANIZATIONNAME -string "Caltech"

# Add user name
com.apple.Xcode PBXCustomTemplateMacroDefinitions.FULLUSERNAME -string "Claude Rogers"
