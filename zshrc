# Load shared config among shells
if [ -f ~/.shell/shellrc_before ]; then
    source ~/.shell/shellrc_before
fi

# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# Init plugin manager Antigen
export ADOTDIR=~/.zsh/antigen
antigen_source_dir="$ADOTDIR"/src
if [ ! -d "$antigen_source_dir" ]; then
    mkdir -p "$antigen_source_dir"
    curl -L git.io/antigen > "$antigen_source_dir"/antigen.zsh
fi
source $antigen_source_dir/antigen.zsh
antigen init ~/.zsh/antigenrc

# Aliases
source ~/.shell/aliases.sh

# vi editing mode
set -o vi

# Default editor
export EDITOR=vim

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
