echo Hello Bob, Lets get started!

# Set Variables
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTs="--no-quarantine"

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'


# Customize Prompt(s)
PROMPT='%1~ %L %# '
RPROMPT='%W %t'

# Add Locations to $PATH Variable
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_" 
}
function batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}
# Plugins
