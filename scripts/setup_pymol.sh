#!/bin/sh

set -e

info () {
  printf "  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

info "Downloading X11"
curl -o XQuartz-2.7.4.dmg http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.4.dmg
hdiutil mount XQuartz-2.7.4.dmg
info "Installing X11"
sudo installer -pkg "/Volumes/XQuartz-2.7.4/XQuartz.pkg" -target '/'
hdiutil unmount /Volumes/XQuartz-2.7.4

info "Installing pymol"
scp cjrogers@wolf11.wag.caltech.edu:/project/Biogroup/Software/GEnsemble/programs/thirdparty/pymol-v1.3r1/source/MacPyMOL-v1.3r1-edu.tar.bz2 ~/Downloads
cd ~/Downloads
tar -xvjf MacPyMOL-v1.3r1-edu.tar.bz2
cd MacPyMOL-v1.3r1-edu
mv MacPyMol.app /Applications/PyMOLX11Hybrid.app
ln -s ~/dotfiles/pymolrc ~/.pymolrc

success "Pymol ready to use!"
