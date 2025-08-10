#!/bin/bash
echo "Starting Homebrew installation via wrapper script..."

# Run the actual install script from the same directory
NONINTERACTIVE=1 /bin/bash "$(dirname "$0")/install_homebrew.sh"

if [ $? -ne 0 ]; then
  echo "Homebrew installation failed."
  exit 1
fi

echo "Homebrew installation completed successfully."
