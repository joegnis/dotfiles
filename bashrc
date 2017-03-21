# Allow local customizations in the ~/.bashrc_local_before file
if [ -f ~/.bashrc_local_before ]; then
    source ~/.bashrc_local_before
fi

# Load Bash-it
source ~/.bash/bashitrc

# Aliases
source ~/.shell/aliases.sh

# vi editing mode
set -o vi

# Default editor
export EDITOR=vim

# Allow local customizations for both zsh and bash 
# in the ~/.shell/shellrc_local_after file
if [ -f ~/.shell/shellrc_local_after ]; then
    source ~/.shell/shellrc_local_after
fi

# Allow local customizations in the ~/.bashrc_local_after file
if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after 
fi
