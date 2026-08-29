#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_SLUG="$(omarchy-theme-current | tr '[:upper:]' '[:lower:]' | tr ' ' '-')"
DEST_DIR="$HOME/.config/omarchy/backgrounds/$THEME_SLUG"

mkdir -p "$DEST_DIR"

shopt -s nullglob nocaseglob
for img in "$SRC_DIR"/*.{png,jpg,jpeg,webp,gif}; do
    ln -sf "$img" "$DEST_DIR/$(basename "$img")"
    echo "linked $(basename "$img")"
done
