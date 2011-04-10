. ~/.bin/bash_colors.sh

take() {
    mkdir -p $1 &&
    cd $1
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ \1/"
}

# open a man page in Preview
pman () {
    man -t "$@" | open -f -a /Applications/Preview.app
}

# open a man page in TextMate
tman () {
    MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1="\[\033[0;32m\]λ\[\033[0;36m\] \W\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: "
export GREP_OPTIONS="--color"

source ~/.bin/git-completion.bash
source ~/.bin/phpunit-completion

alias l="ls -alp"
alias ll="ls -lp"
