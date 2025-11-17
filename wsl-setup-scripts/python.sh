#!/bin/bash
set -e

echo "--- Starting Python setup ---"

sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv

echo "--- Python setup complete ---"
