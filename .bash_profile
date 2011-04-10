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
export GREP_OPTIONS="--color"
export LSCOLORS=ExFxCxDxBxegedabagacad

# \[\033]0;\w\007\] puts the full path in Terminal.app's title bar.
# See this: http://apple.stackexchange.com/questions/5435/terminal-tips-and-tricks-for-mac-os-x/5455#5455
export PS1="\[\033]0;\w\007\]${GREEN}λ${CYAN} \W${GREEN}\$(parse_git_branch)${RESET}: "

source ~/.bin/git-completion.bash
source ~/.bin/phpunit-completion.sh

alias l="ls -alp"
alias ll="ls -lp"
