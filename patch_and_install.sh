#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[*] Installing dependencies..."
sudo apt install -y pipx libkrb5-dev gcc python3-dev 2>/dev/null || true
pipx ensurepath 2>/dev/null || true

echo "[*] Installing idmhound..."
pipx install "$SCRIPT_DIR" --force

echo "[+] Done. Run 'idmhound --help' to verify."
