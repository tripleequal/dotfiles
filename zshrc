echo Hello Bob, Lets get started!

# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'


# Customize Prompt(s)
PROMPT='%1~ %L %# '
RPROMPT='%W %t'
# Add Locations to $PATH Variable

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_" 
}
# Plugins
