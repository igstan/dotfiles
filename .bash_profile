source ~/.bin/bash_colors.sh

take () {
    mkdir -p $1 &&
    cd $1
}

# Rebuild LaunchServices database.
# Useful when having duplicate icons in context menus
lsrebuild () {
    /System/Library/Frameworks/CoreServices.framework/Versions/Current/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user
}

parse_git_branch () {
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

# initializing bash completions every time takes too much, so I use a function
# to load it only when needed
load-completions() {
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
  fi
}

export CLICOLOR=1
export GREP_OPTIONS="--color"
export LSCOLORS=ExFxCxDxBxegedabagacad

# \[\033]0;\w\007\] puts the full path in Terminal.app's title bar.
# See this: http://apple.stackexchange.com/questions/5435/terminal-tips-and-tricks-for-mac-os-x/5455#5455
export PS1="\[\033]0;\w\007\]\[\033[0;32m\]λ\[\033[0;36m\] \W\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: "

export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/lib/node:$PATH"
export PATH="$HOME/Projects/android/NDK:$PATH"
export PATH="$HOME/Projects/android/SDK/tools:$PATH"
export PATH="$HOME/Projects/android/SDK/platform-tools:$PATH"
export PATH="/usr/local/Cellar/jruby/1.6.0/jruby/bin:$PATH"
export PATH="/Applications/Racket/bin:$PATH"
export PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

export SCALA_HOME="/usr/local/Cellar/scala/2.8.1"
export ANDROID_SDK_HOME="$HOME/Projects/android/SDK"
export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"

export CATALINA_OPTS="-server -Xms512m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC -Djava.awt.headless=true"

source /usr/local/etc/bash_completion.d/git-completion.bash
source ~/.completions/npm-completion.sh
# source ~/.completions/phpunit-completion.sh

alias l="ls -alp"
alias ll="ls -lp"
alias s="dirs -v"
alias ..="cd ../"
alias sbx="pushd $HOME/Projects/clients/shoeboxed/web && clear"

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
