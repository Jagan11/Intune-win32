#!/bin/bash

echo "Running wrapper script to install Homebrew..."

NONINTERACTIVE=1 /bin/bash "$(dirname "$0")/install_homebrew.sh"

if [ $? -ne 0 ]; then
  echo "Homebrew installation failed in wrapper!"
  exit 1
fi

echo "Homebrew installation completed successfully."
