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
        cp ~/dotfiles/oh-my-zsh/themes/cjr.zsh-theme ~/.oh-my-zsh/themes/
        ln -s zshrc ~/.zshrc

4.  Install solarized terminal theme:

        cd ~/Desktop
        curl -o 'Solarized Dark.terminal' https://raw.github.com/tomislav/osx-lion-terminal.app-colors-solarized/master/Solarized%20Dark.terminal 
   Then, import theme in terminal preferences.

5.  Install homebrew:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

6.  Install wget, aspell:

        brew install wget
        brew install aspell --with-lang=en
        brew install libjpeg
        brew install freetype
        brew install gsl
        brew install boost

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
        sudo pip install PIL

8.  Install MacVim [http://code.google.com/p/macvim/](http://code.google.com/p/macvim/):

        cd ~/Downloads
        wget http://macvim.googlecode.com/files/MacVim-snapshot-66.tbz
        tar -xvjf MacVim-snapshot-66.tbz
        cd MacVim-snapshot-66
        mv MacVim.app /Applications
        sudo mv mvim /usr/local/bin

9.  Set up git config:

        cd ~/dotfiles
        ln -s gitconfig ~/.gitconfig

10. Set up vim-pathogen:

        mkdir -p ~/.vim/autoload ~/.vim/bundle
        curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

11. Get solarized, nerdtree, python-mode, vim-jedi, powerline, closetag.vim:

        cd ~/.vim/bundle
        git clone git://github.com/altercation/vim-colors-solarized.git
        git clone https://github.com/scrooloose/nerdtree.git
        git clone https://github.com/Lokaltog/vim-powerline.git
        git clone https://github.com/davidhalter/jedi-vim.git
        git clone https://github.com/vim-scripts/closetag.vim.git
        cd ~/dotfiles
        ln -s vimrc ~/.vimrc

12. Install tmux:

        brew install tmux
        cd ~/dotfiles
        ln -s tmux.conf ~/.tmux.conf

13. Install MacTeX [http://tug.org/mactex/](http://tug.org/mactex/)

        curl -o MacTeX.pkg http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg
        sudo installer -pkg MacTeX.pkg -target '/'
        git clone https://github.com/claudejrogers/my-texmf.git ~/Library/texmf

14. Install emacs-24 [http://emacsformacosx.com/](http://emacsformacosx.com/):

        curl -o Emacs-24.2-universal-10.6.8.dmg http://emacsformacosx.com/emacs-builds/Emacs-24.2-universal-10.6.8.dmg
        hdiutil mount Emacs-24.2-universal-10.6.8.dmg
        sudo installer -pkg "/Volumes/../Emacs-24.2-universal-10.6.8.pkg" -target '/'
        hdiutil unmount "/Volumes/.."

15. Install emacs-prelude [https://github.com/bbatsov/prelude](https://github.com/bbatsov/prelude):

        curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
        cp ~/dotfiles/emacs.d/personal/personal.el ~/.emacs.d/personal/

    Check website for changes to settings in `personal.el`.

16. Install X11 [http://xquartz.macosforge.org/landing/](http://xquartz.macosforge.org/landing/):

        curl -o XQuartz-2.7.4.dmg http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.4.dmg
        hdiutil mount XQuartz-2.7.4.dmg
        sudo installer -pkg "/Volumes/../XQuartz-2.7.4.pkg" -target '/'
        hdiutil unmount "/Volumes/.."

17. Install pymol:

        scp cjrogers@wolf11.wag.caltech.edu:/project/Biogroup/Software/GEnsemble/programs/thirdparty/pymol-v1.3r1/source/MacPyMOL-v1.3r1-edu.tar.bz2 ~/Downloads
        cd ~/Downloads
        tar -xvjf MacPyMOL-v1.3r1-edu.tar.bz2
        cd MacPyMOL-v1.3r1-edu
        mv MacPyMol.app /Applications/PyMOLX11Hybrid.app
        ln ~/dotfiles/pymolrc ~/.pymolrc

18. Set up ssh keys with github:

        ssh-keygen -t rsa -C "usename@email.com"
        # Follow instructions
        pbcopy < ~/.ssh/id_rsa.pub
        # on github.com, go to Account Settings/SSH Keys/Add SSH key
        # Paste key into field, click "Add key", confirm with github pw
        # Test
        ssh -T git@github.com

19. Download Dropbox [https://www.dropbox.com/install](https://www.dropbox.com/install).

20. Download Chicken of the VNC [http://sourceforge.net/projects/chicken/](http://sourceforge.net/projects/chicken/).

21. Download spotify [https://www.spotify.com/us/start/](https://www.spotify.com/us/start/).

