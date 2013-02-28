#!/bin/zsh

FILES=(zshrc vimrc pymolrc)
REPO_REL_DIR=`pwd`/..
REPO_ABS_DIR=`echo ${REPO_REL_DIR}(:A)`


echo $REPO_ABS_DIR

for file in $FILES
do
    if [[ -e ~/.$file ]]
    then
        rm ~/.$file
    fi

    ln -s $REPO_ABS_DIR/$file ~/.$file
done
