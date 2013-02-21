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

info "installing MacVim"
cd ~/Downloads
wget http://macvim.googlecode.com/files/MacVim-snapshot-66.tbz
tar -xvjf MacVim-snapshot-66.tbz
cd MacVim-snapshot-66
mv MacVim.app /Applications
sudo mv mvim /usr/local/bin

info "Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

info "Installing vim packages"
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git

# Check for new powerline repo before installing
git clone https://github.com/Lokaltog/vim-powerline.git

git clone https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/vim-scripts/closetag.vim.git
ln -s ~/dotfiles/vimrc ~/.vimrc

success "Vim ready to use"
