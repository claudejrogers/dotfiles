# dotfiles

This repo contains important dotfiles.

## Setting up a new computer

1.  Install XCode and commandline tools

2.  Install oh-my-zsh:

        curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

3.  Download dotfiles repo:

        cd ~
        git clone https://github.com/claudejrogers/dotfiles.git
        cd dotfiles
        ln -s zshrc ~/.zshrc

4.  Install solarized terminal theme:

        cd ~/Desktop
        curl -L https://raw.github.com/tomislav/osx-lion-terminal.app-colors-solarized/master/Solarized%20Dark.terminal -o 'Solarized Dark.terminal'
   Then, import theme in terminal preferences

5.  Install homebrew:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

6.  Install wget, aspell:

        brew install wget
        brew install aspell --with-lang=en

7.  Set up python:

        # install scipack
        curl -o install_superpack.sh https://raw.github.com/fonnesbeck/ScipySuperpack/master/install_superpack.sh
        sh install_superpack.sh
        # Install pip
        sudo easy_install pip
        sudo pip install markdown
        sudo pip install networkx
        sudo pip install jedi
        sudo pip install requests
        sudo pip install xlrd
        sudo pip install xlwt
        sudo pip install django
        sudo pip install fabric
        sudo pip install biopython
        sudo pip install pygments
        sudo pip install sympy
        sudo pip install virtualenv

8.  Install MacVim [http://code.google.com/p/macvim/](http://code.google.com/p/macvim/):
    
        cd ~/Downloads
        wget http://macvim.googlecode.com/files/MacVim-snapshot-66.tbz
        tar -xvjf MacVim-snapshot-66.tbz
        cd MacVim-snapshot-66
        mv MacVim.app /Applications
        sudo mv mvim /usr/local/bin

9.  Set up vim-pathogen:

        mkdir -p ~/.vim/autoload ~/.vim/bundle
        curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

10. Get solarized, nerdtree, python-mode, vim-jedi, powerline, closetag.vim:

        cd ~/.vim/bundle
        git clone git://github.com/altercation/vim-colors-solarized.git
        git clone https://github.com/scrooloose/nerdtree.git
        git clone https://github.com/Lokaltog/vim-powerline.git
        git clone https://github.com/davidhalter/jedi-vim.git
        git clone https://github.com/vim-scripts/closetag.vim.git
        ln -s ~/dotfiles/vimrc ~/.vimrc

11. Install tmux:

        brew install tmux
        ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

12. Install MacTeX [http://tug.org/mactex/](http://tug.org/mactex/)

13. Install emacs-24 [http://emacsformacosx.com/](http://emacsformacosx.com/)

14. Install emacs-prelude [https://github.com/bbatsov/prelude](https://github.com/bbatsov/prelude):

        curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh

