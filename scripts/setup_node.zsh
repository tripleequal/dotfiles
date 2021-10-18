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

# Lets wait until Yarn 2.0 is stable
# echo 'Set Yarn Global Bin'
# yarn config set prefix ~/.yarn

echo 'Install Global Node Packages'

npm install --global firebase-tools
npm install --global @angular/cli
npm install --global @ionic/cli
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global ember-cli
npm install --global trash-cli

