#!/usr/bin/env bash

backup_dir="$HOME/.hm-backups/$(date +%Y%m%d-%H%M%S)"

mkdir -p "$backup_dir"

mv "$HOME/.config" "$backup_dir/"
mv "$HOME/.vscode" "$backup_dir/"