#!/usr/bin/env zsh

echo "\n<<< Setup Fresh ZSH >>>\n"

echo 'SUDO for updating default shell'
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells'

echo 'Enter password to change login shell'
chsh -s '/usr/local/bin/zsh'