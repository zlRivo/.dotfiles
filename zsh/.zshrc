# Load pyenv automatically by appending
# the following to 
# ~/.zprofile (for login shells)
# and ~/.zshrc (for interactive shells) :

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
 
# Restart your shell for the changes to take effect.

# Aliases
. ~/.aliases.sh
# Path dir
. ~/.pathdirs.sh

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %b'

setopt PROMPT_SUBST
setopt INC_APPEND_HISTORY

# Prompt
PROMPT='%F{blue}%~ %#%F{white} '
RPROMPT='%F{yellow}${vcs_info_msg_0_}'

# History file
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
