# custom sudo
alias mysudo='sudo -E env "PATH=$PATH"'

# pretty print json
alias prettyjson='python -m json.tool'

# exa as ls
if command_exists exa; then
    alias ls=exa
    alias la='exa --long --all --classify'
fi
