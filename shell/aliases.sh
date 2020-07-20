# custom sudo
alias mysudo='sudo -E env "PATH=$PATH"'

# pretty print json
alias prettyjson='python -c"# -*- coding: UTF-8 -*-
import fileinput, json;
print(json.dumps(json.loads(\"\".join(fileinput.input())),
    sort_keys=True, indent=4, ensure_ascii=False).encode(\"utf-8\"))"'

# exa as ls
if command_exists exa; then
    alias ls=exa
    alias la='exa --long --all --classify'
fi
