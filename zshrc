# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cjr"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python django brew github pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Applications/Emacs.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin:/Users/cjrogers/bin:/Users/cjrogers/bin/nbconvert:/usr/texbin
export PYTHONPATH=/Library/Python/2.7/site-packages
export CLICOLOR=1
export LSCOLORS=exgxfxdxCxHxHxCbCeEhEh
# ENV Variables
export LC_TYPE=en_US.UTF-8
# export HDF5_DIR=/Users/cjrogers/dev/hdf5-1.8.8
export TERM=xterm-256color
# export EDITOR="mate -w"
# export VISUAL="mate -w"
export EDITOR="mvim -f"
export VISUAL="mvim -f"
# export CLICOLOR=1
# export LSCOLORS=gxexfxdxCxHxHxCbCeEhEh
# ls aliases
alias ll='ls -lh'
alias la='ls -AF'
# python package installer for older modules that can't handle gcc 4.2
alias notebook='ipython notebook --pylab=inline'
# server aliases
alias lhwlab='ssh cjrogers@lhwlab.caltech.edu'
alias itsssh='ssh cjrogers@its.caltech.edu'
alias itsftp='sftp cjrogers@its.caltech.edu'
alias hive='ssh -Y cjrogers@hive.wag.caltech.edu'
alias wolf='ssh -Y cjrogers@wolf11.wag.caltech.edu'
# emacs alias
alias emacsdaemon='/Applications/Emacs.app/Contents/MacOS/Emacs --daemon'
# alias sage='/Applications/Sage-5.0-OSX-64bit-10.6.app/Contents/Resources/sage/sage'
alias pymol='/Applications/PyMOLX11Hybrid.app/Contents/MacOS/MacPyMOL'
# get solarized/vim to work with tmux
alias tmux="TERM=screen-256color-bce tmux"
