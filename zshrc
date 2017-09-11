# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# Init plugin manager Antigen
export ADOTDIR=~/.zsh/antigen
source $ADOTDIR/src/antigen.zsh
antigen init ~/.zsh/antigenrc

# Aliases
source ~/.shell/aliases.sh

# vi editing mode
set -o vi

# Default editor
export EDITOR=vim

# enable color support, aliases are handled by zsh plugin
# See: https://github.com/seebi/dircolors-solarized
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors ~/.dircolors)"
fi

# Allow customizations for both zsh and bash
if [ -f ~/.shell/shellrc_after ]; then
    source ~/.shell/shellrc_after
fi

# Allow local customizations for both zsh and bash
# in the ~/.shell/shellrc_local_after file
if [ -f ~/.shell/shellrc_local_after ]; then
    source ~/.shell/shellrc_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
