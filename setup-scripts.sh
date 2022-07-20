#!/bin/bash

# for macOS and Linux users
brew tap drud/ddev && brew install ddev \

# for Windows
# choco install ddev

# installing/reinstalling xdg-utils
sudo apt-get install --reinstall xdg-utils -y

# remove all those core files installing ddev adds to my gitpod
# log into site bc gitpod keep throwing me out
rm $(ls . | grep core.) \
ddev launch
