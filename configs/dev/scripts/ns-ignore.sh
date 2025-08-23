#!/usr/bin/env bash
# Usage: ns-license.sh <license-name>

if [ -z "$1" ]; then
    echo "Usage: $0 <license-name>"
    exit 1
fi

TARGET_FILE="./.gitignore"
LICENSE_NAME="$1"

LICENSE_URL_NAME="$(printf '%s' "$LICENSE_NAME" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')"
LICENSE_URL="https://raw.githubusercontent.com/github/gitignore/refs/heads/main/$LICENSE_URL_NAME.gitignore"

curl -sSL "$LICENSE_URL" -o "$TARGET_FILE"

echo "" >> "$TARGET_FILE"
echo "# Automatically added by ns-license.sh" >> "$TARGET_FILE"
echo "flake.nix" >> "$TARGET_FILE"
echo "flake.lock" >> "$TARGET_FILE"

echo "Copied $LICENSE_URL_NAME gitignore"