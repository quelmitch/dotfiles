#!/bin/bash
set -e

echo "--- Starting LaTeX (TeX Live) setup ---"

sudo apt-get update
# texlive-full is the most comprehensive, but huge.
# For a smaller install, you could use 'texlive-latex-base' and add packages as needed.
sudo apt-get install -y texlive-base texlive-latex-extra

echo "--- LaTeX setup complete! ---"
