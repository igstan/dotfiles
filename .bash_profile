source "$HOME/.bin/helpers.sh"

pbdir () {
  echo "cd \"`pwd`\"" | pbcopy
}

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
load-completions () {
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
  fi
}

brew-version () {
  brew ls --versions $1 | grep -oE ' .+$' | tr -d ' '
}

dict () {
  open "dict://$1"
}

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# \[\033]0;\w\007\] puts the full path in Terminal.app's title bar.
# See this: http://apple.stackexchange.com/questions/5435/terminal-tips-and-tricks-for-mac-os-x/5455#5455
export PS1="\[\033]0;\w\007\]\[\033[0;32m\]λ\[\033[0;36m\] \W\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: "

shopt -s checkwinsize

export GITHUB_USER=igstan

export EDITOR="sublime -w"

export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/usr/local/lib/node:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Projects/android/NDK:$PATH"
export PATH="/Applications/Racket/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.shoeboxed:$PATH"
export PATH="$HOME/.bin:$PATH"

export SCALA_HOME="/usr/local/Cellar/scala/$(brew-version 'scala')/libexec"
export GROOVY_HOME="/usr/local/Cellar/groovy/$(brew-version 'groovy')/libexec"
export ANDROID_HOME="/usr/local/Cellar/android-sdk/$(brew-version 'android-sdk')"
export ANDROID_SDK_HOME="/usr/local/Cellar/android-sdk/$(brew-version 'android-sdk')"
export GRAILS_HOME="/usr/local/Cellar/grails/$(brew-version 'grails')/libexec"

export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"
export GREP_OPTIONS="--color"
export ACK_OPTIONS="--ignore-dir=target"
# Other useful JVM options:
#
#  -XX:+HeapDumpOnOutOfMemoryError
#  -XX:HeapDumpPath=$HOME/Desktop
#
export JVM_OPTS="-server -Xms512m -Xmx2048m -XX:PermSize=128m -XX:MaxPermSize=2048m -XX:+UseConcMarkSweepGC -Djava.awt.headless=true"
export CATALINA_OPTS="$JVM_OPTS"
export MAVEN_OPTS="$JVM_OPTS"

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/tig-completion.bash
# source /usr/local/etc/bash_completion.d/scala
# source ~/.completions/npm-completion.sh
# source ~/.completions/phpunit-completion.sh

alias l="ls -alp"
alias ll="ls -lp"
alias s="dirs -v"
alias ..="cd ../"

[[ -s "$HOME/.igstanrc" ]]        && source "$HOME/.igstanrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
