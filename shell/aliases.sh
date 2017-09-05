# custome sudo
alias mysudo='sudo -E env "PATH=$PATH"'

# pretty print json
alias prettyjson='python -m json.tool'

# bd. See https://github.com/vigneshwaranr/bd
alias bd=". bd -si"

# pyenv
alias workon='pyenv activate'
alias mkvirtualenv='pyenv virtualenv'
alias lsvirtualenv='pyenv virtualenvs'
alias rmvirtualenv='pyenv uninstall'
alias deactivate='pyenv deactivate'
