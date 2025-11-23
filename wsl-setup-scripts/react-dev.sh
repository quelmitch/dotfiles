#!/usr/bin/env bash
set -e

sudo apt update
sudo apt upgrade -y
sudo apt install -y git curl build-essential

# Install NVM if missing
if [ ! -d "$HOME/.nvm" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node LTS
nvm install --lts
nvm use --lts
nvm alias default lts/*

# Install pnpm
npm install -g pnpm
