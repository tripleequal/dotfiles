#!/usr/bin/env zsh

echo "\n<<< Setup Fresh ZSH >>>\n"

if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
  echo "Homebrew ZSH already added to /etc/shells"
else
  echo 'SUDO for updating default shell'
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" =  '/usr/local/bin/zsh' ]; then
  echo "Homebrew ZSH already set"
else
  echo 'Enter password to change login shell'
  chsh -s '/usr/local/bin/zsh'
fi

echo "\n<<< Setup Rosetta for M1 >>>\n"
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
