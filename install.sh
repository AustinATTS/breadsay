#!/bin/bash
# Installation script for breadsay

set -e

echo "╔════════════════════════════════════════╗"
echo "║      breadsay Installation Script      ║"
echo "╚════════════════════════════════════════╝"
echo ""

# Check if running as root for system-wide install
if [ "$EUID" -eq 0 ]; then
  INSTALL_DIR="/usr/local/bin"
  echo "Installing to system directory: $INSTALL_DIR"
else
  INSTALL_DIR="$HOME/.local/bin"
  echo "Installing to user directory: $INSTALL_DIR"
  mkdir -p "$INSTALL_DIR"
fi

# Build the project
echo ""
echo "Building breadsay..."
make clean
make

if [ ! -f "./breadsay" ]; then
  echo "Error: Build failed. breadsay executable not found."
  exit 1
fi

# Install
echo ""
echo "Installing breadsay to $INSTALL_DIR..."
cp breadsay "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/breadsay"

# Check if install directory is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo ""
  echo "Warning: $INSTALL_DIR is not in your PATH"
  echo "  Add this line to your ~/.bashrc or ~/.zshrc:"
  echo "  export PATH=\"\$PATH:$INSTALL_DIR\""
fi

echo ""
echo "Installation complete!"
echo ""
echo "Run 'breadsay' to see your system information!"