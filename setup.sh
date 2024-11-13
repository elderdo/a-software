#!/bin/bash

# Exit on error
set -e

echo "Setting up the development environment..."

if [ -z "$API_KEY" ] || [ -z "$BEMSID" ]; then
  echo "Error: API_KEY or BEMSID is not set."
  exit 1
fi
export ENV PIP_INDEX_URL="https://$BEMSID:$API_KEY@sres.web.boeing.com/artifactory/api/pypi/pypi-releases/simple"


# Create a virtual environment
python3 -m venv /home/$(whoami)/.venv

# Activate the virtual environment
source /home/$(whoami)/.venv/bin/activate

# Check if requirements.txt exists and install Python dependencies from requirements.txt (located in the src directory)
if [ -f "./requirements.txt" ]; then
    # Install the dependencies inside the virtual environment
    echo "Installing Python dependencies..."
    pip install --trusted-host sres.web.boeing.com --upgrade pip
    pip install --trusted-host sres.web.boeing.com -r ./requirements.txt
else
    echo "No requirements.txt found in src directory, skipping Python package installation."
fi

# Set up environment variables (you can add more if needed)
echo "Setting up environment variables..."
echo "export PROJECT_DIR=/workspace/project" >> ~/.bashrc
echo "source /home/$(whoami)/.venv/bin/activate" >> ~/.bashrc # Automatically activate venv in new terminal
echo "export ENV PIP_INDEX_URL=https://$BEMSID:$API_KEY@sres.web.boeing.com/artifactory/api/pypi/pypi-releases/simple" >> ~/.bashrc
source ~/.bashrc

# Print out success message
echo "Setup complete!"
echo "Running mkdocs serve..."
mkdocs serve  # This works but leaves a configuring tab.   You can also use a vscode task as a replacement.  I lke this better!
