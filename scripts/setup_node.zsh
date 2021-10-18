#!/usr/bin/env zsh

echo "\n<<< Setup Node >>>\n"

# Node is managed with N, a package simialr to nvm

if exists node; then
  echo "Node $(node --version) and NPM $(npm --version) already installed"
else
  echo 'Install Node and NPM with "n"'
  n 8
  n latest
  n lts
fi
