#!/bin/bash

source "$(dirname "$0")/git_setup.sh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# manually add zsh-autosuggestions, zsh-syntax-highlighting, git, nvm, aws to plugins

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


### ranger install
brew install ranger
ranger --copy-config=all

brew install --cask font-hack-nerd-font

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
# don't forger to set image preview to false
# otherwise it will stuck on a big files

# In iterm: ITerm2 > Preferences > Profiles > Text > Change Font
# and select nerd font


brew install pueue
brew install go
brew install docker
brew install difft


brew install colima
echo 'alias start_colima="colima start -c 4 -m 8 -d 100"' >> ~/.zshrc


brew install fnm
echo '$(fnm env --use-on-cd --shell zsh)' >> ~/.zshrc

brew install fzf
$(brew --prefix)/opt/fzf/install

gh extension install dlvhdr/gh-dash


## tmux installation
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



echo "source <(kubectl completion zsh)" >> ~/.zshrc


brew install redis


# https://github.com/dlvhdr/gh-dash
gh extension install dlvhdr/gh-dash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
