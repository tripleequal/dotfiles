echo Hello Bob, Lets get started!

# Set Variables
export HOMEBREW_CASK_OPTs="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH Options

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

# Nicer $PATH list
# () accepts args
alias trail='<<<${(F)path}'

alias man=batman
alias rs=trash
alias bbd='brew bundle dump --force --describe'

# Customize Prompt(s)
PROMPT='%1~ %L %# '
RPROMPT='%W %t'

# Add Locations to $path array

# Old Syntax
# export PATH="/$N_PREFIX/bin:$PATH"
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

typeset -U path
path=(
  "/$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_" 
}

function batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}
# Plugins
