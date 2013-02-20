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

PYTHON='/usr/bin/python'
GFORTRAN='gcc-42-5666.3-darwin11.pkg'

if test ! $(which pip)
then
    info "installing pip via easy_install"
    sudo easy_install pip
fi


if test ! $(which gfortran)
then
    info "Downloading gfortran..."
    curl -o ${GFORTRAN} http://r.research.att.com/tools/${GFORTRAN}
    info "Installing gfortran..."
    sudo installer -pkg ${GFORTRAN} -target '/'
    if test ! $(which gfortran)
    then
        success "gfortran: $(which gfortran)"
    else
        fail "Could not install gfortran."
else
    info "gfortran: $(which gfortran)"
fi

info "Installing zeromq..."
curl -o zeromq-3.2.2.tar.gz http://download.zeromq.org/zeromq-3.2.2.tar.gz
tar -xzvf zeromq-3.2.2.tar.gz
cd zeromq-3.2.2
./configure
make
sudo make install

info "Cloning Scipy Superpack"
git clone --depth=1 git://github.com/fonnesbeck/ScipySuperpack.git
info "Installing numpy..."
sudo "${PYTHON}" -m easy_install -N -Z ScipySuperpack/numpy-1.8.0.dev_4600b2f_20130131-py2.7-macosx-10.8-intel.egg
info "Installing scipy..."
sudo "${PYTHON}" -m easy_install -N -Z ScipySuperpack/scipy-0.12.0.dev_b69fe18_20130131-py2.7-macosx-10.8-intel.egg
info "installing matplotlib..."
sudo "${PYTHON}" -m easy_install -N -Z ScipySuperpack/matplotlib-1.3.x-py2.7-macosx-10.8-intel.egg
info "cleaning up..."
rm -rf ScipySuperpack

info "installing ipython dependencies"
sudo easy_install cython
sudo pip install -U readline
sudo pip install -U nose
sudo pip install -U pexpect
sudo pip install -U pygments
sudo easy_install pyzmq
sudo pip install -U tornado
info "installing additional python modules"
sudo pip install -U pandas
sudo pip install -U markdown
sudo pip install -U networkx
sudo pip install -U jedi
sudo pip install -U requests
sudo pip install -U xlrd
sudo pip install -U xlwt
sudo pip install -U django
sudo pip install -U fabric
sudo pip install -U biopython
sudo pip install -U pygments
sudo pip install -U sympy
sudo pip install -U virtualenv
info "installing PIL dependencies"
brew install wget
brew install aspell --with-lang=en
brew install libjpeg
brew install freetype
brew install gsl
brew install boost
info "installing PIL"
sudo pip install -U PIL
success "Done!"
