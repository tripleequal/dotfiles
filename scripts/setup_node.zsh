#!/usr/bin/env zsh

echo "\n<<< Setup Node >>>\n"

# Node is managed with N, a package simialr to nvm

if exists $N_PREFIX/bin/node; then
  echo "Node $($N_PREFIX/bin/node --version) and NPM $($N_PREFIX/bin/npm --version) already installed with N"
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

echo 'Global packages installed'
npm list --global --depth=0

