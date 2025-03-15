#!/bin/bash

git config --global user.email "zooblin@gmail.com"
git config --global user.name "Sasha Kruglyak"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "export LC_ALL=en_US.UTF-8" >> ~/.zshrc
echo "export LANG=en_US.UTF-8" >> ~/.zshrc
echo "export LANGUAGE=en_US.UTF-8" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# manually add zsh-autosuggestions, zsh-syntax-highlighting, git, nvm, aws to plugins

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install jq

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


brew install iterm2
brew install ripgrep
brew install fx
brew install fpp
brew install pueue
brew install lazydocker
brew install lazygit
brew install gitui
brew install tmux
brew install htop
brew install yq
brew install go
brew install docker
brew install direnv

brew install kubecolor
echo 'alias kubectl="kubecolor"' >> ~/.zshrc

brew install eza
echo 'alias ls="eza -la"' >> ~/.zshrc

brew install bat
echo 'alias cat="bat -P"' >> ~/.zshrc

brew install colima
echo 'alias start_colima="colima start -c 4 -m 8 -d 100"' >> ~/.zshrc


brew install fnm
echo '$(fnm env --use-on-cd --shell zsh)' >> ~/.zshrc

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

#https://blog.gitbutler.com/how-git-core-devs-configure-git
git config --global column.ui auto
git config --global branch.sort -committerdate
git config --global diff.algorithm histogram

### END


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh