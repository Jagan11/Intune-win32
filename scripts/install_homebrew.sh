#!/bin/bash

echo "Starting Homebrew installation..."

# Non-interactive install of Homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ $? -ne 0 ]; then
  echo "Homebrew installation failed!"
  exit 1
fi

echo "Homebrew installed successfully."
