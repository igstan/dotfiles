# This bash script adds tab-completion to the "phpunit" command. It is based on
# django_bash_completion and .git-completion.bash.
#
# Testing it out without installing
# =================================
# To test out the completion without "installing" this, just run this file
# directly, like so:
#
#     source ~/phpunit-completion
#
# After you do that, tab completion will immediately be made available in your
# current Bash shell. But it won't be available next time you log in.
#
#
# Installing
# ==========
# To install this, point to this file from your .bash_profile, like so:
#
#     source ~/phpunit-completion
#
# Do the same in your .bashrc if .bashrc doesn't invoke .bash_profile. It will
# take effect the next time you log in.
#
#
# Uninstalling
# ============
# To uninstall, just remove the line from your .bash_profile and .bashrc.
#
# Author: Ionut G. Stan <ionut.g.stan@gmail.com>


# Extract and cache PHPUnit options
__phpunit_opts=`phpunit --help | grep -o -e "\-\-[a\-z\-]*"`

_phpunit_completion()
{
    COMPREPLY=( $(compgen -W "${__phpunit_opts}" -- ${COMP_WORDS[COMP_CWORD]}) )
    return 0
}

complete -F _phpunit_completion phpunit
