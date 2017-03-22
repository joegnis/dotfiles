# Better which
which () {
    /usr/bin/which --read-alias --read-functions --show-title --show-dot --tty-only &>/dev/null
    if [ "$?" -eq 2 ]; then
        /usr/bin/which $@
        return
    fi
    (alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-title --show-dot $@
}

# custome sudo
alias mysudo='sudo -E env "PATH=$PATH"'

# pretty print json
alias prettyjson='python -m json.tool'
