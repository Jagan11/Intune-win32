#!/bin/bash

# Check if Homebrew is already installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found, installing..."
    # Install Homebrew non-interactively
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for Apple Silicon or Intel Macs
    if [[ "$(uname -m)" == "arm64" ]]; then
        export PATH="/opt/homebrew/bin:$PATH"
    else
        export PATH="/usr/local/bin:$PATH"
    fi

    echo "Homebrew installation completed."
else
    echo "Homebrew is already installed."
fi
