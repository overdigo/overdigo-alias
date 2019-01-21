#!/bin/bash
cd $HOME
wget https://raw.githubusercontent.com/overdigo/overdigo-alias/master/alias
cat alias > $HOME/.bashrc
source $HOME/.bashrc
rm alias
