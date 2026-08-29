#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_DIR="$HOME/.config/omarchy/backgrounds/tokyo-night"

mkdir -p "$DEST_DIR"

shopt -s nullglob nocaseglob
for img in "$SRC_DIR"/*.{png,jpg,jpeg,webp,gif}; do
    ln -sf "$img" "$DEST_DIR/$(basename "$img")"
    echo "linked $(basename "$img")"
done
