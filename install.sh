#!/bin/bash
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`

cd $SCRIPTPATH && git submodule update -i

rm ~/.vim
ln -s $SCRIPTPATH/.vim ~/.vim
rm ~/.vimrc
ln -s $SCRIPTPATH/.vimrc ~/.vimrc
rm ~/.bashrc
ln -s $SCRIPTPATH/.bashrc ~/.bashrc
