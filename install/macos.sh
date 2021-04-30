#!/bin/bash

### ranger install
brew install ranger
ranger --copy-config=all

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
# don't forger to set image preview to false
# otherwise it will stuck on a big files

# In iterm: ITerm2 > Preferences > Profiles > Text > Change Font
# and select nerd font
