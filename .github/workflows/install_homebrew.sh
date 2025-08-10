#!/bin/bash

if ! command -v brew &> /dev/null
then
    echo "Homebrew not found, installing..."
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew installation completed."
else
    echo "Homebrew is already installed."
fi
