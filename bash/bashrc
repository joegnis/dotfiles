# Load shared config among shells
if [ -f ~/.shell/shellrc_before ]; then
    source ~/.shell/shellrc_before
fi

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

# Enable Bash completion
if [ $platform = "linux" ]; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
elif [ $platform = "macos" ]; then
    if [ -f /usr/local/etc/bash_completion ]; then
        . /usr/local/etc/bash_completion
    fi
fi

# If not running interactively, don't do anything
interactive=no
case $- in
    *i*) interactive=yes;;
      *) ;;
esac
if [ $interactive = "yes" ]; then
    # don't put duplicate lines or lines starting with space in the history.
    # See bash(1) for more options
    HISTCONTROL=ignoreboth

    # append to the history file, don't overwrite it
    shopt -s histappend

    # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
    HISTSIZE=1000
    HISTFILESIZE=2000

    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    # If set, the pattern "**" used in a pathname expansion context will
    # match all files and zero or more directories and subdirectories.
	# Not supported by default on macOS
    #shopt -s globstar
fi

# Enable Bash completion
if [ $platform = "linux" ]; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
elif [ $platform = "macos" ]; then
    if [ -f /usr/local/etc/bash_completion ]; then
        . /usr/local/etc/bash_completion
    fi
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

# Allow local customizations in the ~/.bashrc_local_after file
if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after
fi
