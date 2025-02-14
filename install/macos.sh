#!/bin/bash

git config --global user.email "zooblin@gmail.com"
git config --global user.name "Sasha Kruglyak"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# manually add zsh-autosuggestions, zsh-syntax-highlighting, git, nvm, aws to plugins

brew install jq

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


brew install ripgrep
brew install fx
brew install fpp
brew install pueue
brew install lazydocker
brew install lazygit
brew install gitui
brew install tmux
brew install htop

brew install eza
echo 'alias ls="eza -ls"' >> ~/.zshrc

brew install bat
echo 'alias cat="bat -P"' >> ~/.zshrc

brew install fzf
$(brew --prefix)/opt/fzf/install

brew install gh	


#### starship
brew install starship
echo "eval "$(starship init zsh)"" >> ~/.zshrc
cat <<EOT >> ~/.config/starship.toml
[kubernetes]
symbol = "⎈ "
format = " [\$symbol\$context( \\\(\$namespace\\\))](\$style) "
style = "bright-blue"
disabled = false
EOT


brew install awscli

brew install kubectl 
echo "source <(kubectl completion zsh)" >> ~/.zshrc


brew install kubectx
brew install k9s

brew install pulumi
brew install dive
brew install redis

pip3 install yq

# https://github.com/dlvhdr/gh-dash
gh extension install dlvhdr/gh-dash


### git pretty diff
brew install diff-so-fancy

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
### END
