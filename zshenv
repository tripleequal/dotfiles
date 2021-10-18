echo "Running .zshenv"

export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

function exists() {
  # File Descriptors
  # STDIN - 0
  # STDOUT - 1
  # STDERR - 2

  # 'command -v' same as 'which'

  # $1 first arg passed to function

  # /dev/null is a black hole
  # > overwrites
  # >> appends to


  # command -v $1 >/dev/null 2>&1
  command -v $1 >/dev/null 2>&1
}