#!/bin/bash
wget https://raw.githubusercontent.com/overdigo/overdigo-alias/master/alias
cat alias > ~/.bashrc
source ~/.bashrc
rm alias
