#!/usr/bin/env bash

backup_dir="$(ls -1dt "$HOME"/.hm-backups/*/ | head -n 1)"
backup_dir="${backup_dir%/}/.config"
config_dir="$HOME/.config/"

cp -rf "$backup_dir/discord" "$config_dir"
cp -rf "$backup_dir/Electron" "$config_dir"
cp -rf "$backup_dir/epiphany" "$config_dir"
cp -rf "$backup_dir/evolution" "$config_dir"
cp -rf "$backup_dir/google-chrome" "$config_dir"
cp -rf "$backup_dir/ibus" "$config_dir"
cp -rf "$backup_dir/micro" "$config_dir"
cp -rf "$backup_dir/nautilus" "$config_dir"
cp -rf "$backup_dir/systemd" "$config_dir"
cp -rf "$backup_dir/totem" "$config_dir"