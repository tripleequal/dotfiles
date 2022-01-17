#!/usr/bin/env zsh

# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

echo "\n<<< Setup AWS CLI >>>\n"

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

echo 'AWS CLI installed'
which aws
aws --version