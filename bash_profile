#for mac os x

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export VISUAL=/usr/local/bin/vim

export EDITOR=/usr/local/bin/vim

export PATH=/usr/share/aws/eb/linux/python2.7:$PATH

export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \W\[\033[31m\]\[\033[01;34m\]$(git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / (/" | sed "s/$/)/")\[\033[00m\] '

export CLICOLORS=1

export LSCOLORS=Gxfxcxdxbxegedabagacad

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
PATH="/usr/local/Cellar/openssl/1.0.2n/bin/":$PATH
PATH="/usr/local/opt/icu4c/bin:$PATH"
PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user37287304/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/user37287304/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user37287304/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/user37287304/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.npm-packages/bin:$PATH"
