# non-interactive
if [[ $- != *i* ]] ; then
	  return
fi

# alias
if [ -e $HOME/.bash_aliases ]; then
	. $HOME/.bash_aliases
fi

# functions
if [ -e $HOME/.bash_functions ]; then
	. $HOME/.bash_functions
fi

# exports
if [ -e $HOME/.bash_exports ]; then
	. $HOME/.bash_exports
fi

# settings
shopt -s checkwinsize
shopt -s histappend

# set up
clear

date +"%m/%d/%Y %r"
