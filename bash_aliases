alias prettyjson='python -m json.tool'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -GFh'
alias ls='ls -GFh'
alias lsvenv='ls ~/py/venvs'
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias grep='grep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias egrep='egrep --colour=auto'
alias prettyjson='python -m json.tool'

function pygrep { grep -nr --include="*.py" "$1" .; }

function rbgrep { grep -nr --include="*.rb" --include="*.erb" "$1" .; }

function jsgrep { grep -nr --exclude-dir=node_modules --include="*.js" --include="*.ts" --include "*.tsx" "$1" .; }

function islistening { lsof -i ":$1" ;}

alias rmpyc='find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -delete'

function activate { source ~/py/venvs/"$1"/bin/activate; }

alias dangling_remove='docker rmi $(docker images --quiet --filter \"dangling=true\")'

