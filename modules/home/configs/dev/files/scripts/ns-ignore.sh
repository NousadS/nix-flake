#!/usr/bin/env bash
# Usage: ns-ignore.sh <ignore-name>

if [ -z "$1" ]; then
    echo "Usage: $0 <ignore-name>"
    exit 1
fi

TARGET_FILE="./.gitignore"
IGNORE_NAME="$1"

IGNORE_URL_NAME="$(printf '%s' "$IGNORE_NAME" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')"
IGNORE_URL="https://raw.githubusercontent.com/github/gitignore/refs/heads/main/$IGNORE_URL_NAME.gitignore"

curl -sSL "$IGNORE_URL" -o "$TARGET_FILE"

echo "" >> "$TARGET_FILE"
echo "# Automatically added by ns-ignore.sh" >> "$TARGET_FILE"
echo "flake.nix" >> "$TARGET_FILE"
echo "flake.lock" >> "$TARGET_FILE"

echo "Copied $IGNORE_URL_NAME gitignore"