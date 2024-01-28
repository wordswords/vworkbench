#!/bin/bash

set -e

sudo rm -rf /opt/vworkbench
sudo mkdir -p /opt/vworkbench
sudo chown -R root:users /opt/vworkbench
sudo chmod -R 770 /opt/vworkbench
git clone git@github.com:wordswords/vworkbench.git /opt/vworkbench

cd /opt/vworkbench/bin/deploy-scripts
./deploy-part-0.zsh # pre requisite packages install
./deploy-part-1.sh # oh my zsh install
./deploy-part-2.zsh # all other customisations

echo "Done."


