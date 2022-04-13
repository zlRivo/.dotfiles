#!/bin/sh
# ----------------------
# ALIASES
# ----------------------

alias ls='lsd' # Better ls
# Stay in visited directory ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger' # Smaller alias for ranger
alias vim='nvim' # Default nvim
alias vi='nvim' # Default nvim
alias v='nvim' # Default nvim
