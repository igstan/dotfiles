source "$HOME/.bin/bash_colors.sh"

log   () { echo -e " $1⚑ ${@:2}$RESET"; }
log_info  () { log $BRIGHT_CYAN $@; }
log_warn  () { log $BRIGHT_YELLOW $@; }
log_error () { log $BRIGHT_RED $@; }
