alias ll='ls -alF'
alias la='ls -A'
alias l='ls -GFh'
alias ls='ls -GFh'
alias lsvenv='ls ~/py/venvs'
alias vi='vim'
alias grep='grep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias egrep='egrep --colour=auto'

function pygrep { grep -nr --include="*.py" "$1" .; }

function rbgrep { grep -nr --include="*.rb" "$1" .; }

function erbgrep { grep -nr --include="*.erb" "$1" .; }

alias rmpyc='find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -delete'

function activate { source ~/py/venvs/"$1"/bin/activate; }

alias dangling_remove='docker rmi $(docker images --quiet --filter \"dangling=true\")'
