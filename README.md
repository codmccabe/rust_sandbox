# Rust + Jupyter (Linux Mint)

## Setup

```bash
# Install dependencies
sudo apt install python3-venv

# Create and activate Python env
python -m venv rust-jupyter-env
source activate_env.sh

# Install Jupyter
pip install jupyter

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env

# Install Rust kernel
cargo install evcxr_jupyter
evcxr_jupyter --install
```

## Launch

```bash
source activate_env.sh
jupyter notebook
```

Use the **browser-based** Jupyter and select the **Rust** kernel.

## Hello World

```rust
println!("Hello, world!");
```