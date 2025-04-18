#!/bin/bash

# Configure user details
git config --global user.email "zooblin@gmail.com"
git config --global user.name "Sasha Kruglyak"

# Install and configure diff-so-fancy
brew install diff-so-fancy

# Configure git pager and diff settings
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
git config --global color.ui true

# Configure diff highlight colors
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

# Configure diff colors
git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

# Core git configurations
git config --global column.ui auto
git config --global branch.sort -committerdate
git config --global diff.algorithm histogram
git config --global push.autoSetupRemote true
git config --global alias.commit-wip '!git add . && git commit --amend --no-edit && git push --force-with-lease' 