#!/bin/bash
set -e

echo "--- Starting base system setup ---"

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y build-essential git curl wget unzip

echo "--- Base system setup complete ---"
