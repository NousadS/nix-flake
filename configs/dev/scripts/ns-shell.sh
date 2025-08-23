#!/usr/bin/env bash
# Usage: ns-shell.sh <shell-name>

if [ -z "$1" ]; then
    echo "Usage: $0 <shell-name>"
    exit 1
fi

TARGET_FILE="./flake.nix"
SHELL_NAME="$1"

SHELL_FILE="$HOME/.nousad/shells/$SHELL_NAME.nix"

if [ ! -f "$SHELL_FILE" ]; then
    echo "Shell not found: $SHELL_FILE"
    exit 1
fi

cp "$SHELL_FILE" "$TARGET_FILE"

echo "Copied $SHELL_NAME shell"
