#!/bin/bash

ENV_NAME="rust-jupyter-env"

# Create the virtual environment if it doesn't exist
if [ ! -d "$ENV_NAME" ]; then
    echo "Creating virtual environment '$ENV_NAME'..."
    python -m venv "$ENV_NAME"
else
    echo "Virtual environment '$ENV_NAME' already exists."
fi

# Activate it
echo "Activating '$ENV_NAME'..."
source "$ENV_NAME/bin/activate"

# Load Rust/Cargo into PATH
source "$HOME/.cargo/env"

echo "Done! You are now in: $VIRTUAL_ENV"
echo "Starting Jupyter..."
jupyter notebook