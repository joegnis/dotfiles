which () {
    (alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
}

# custome sudo
alias mysudo='sudo -E env "PATH=$PATH"'

# pretty print json
alias prettyjson='python -m json.tool'
