#!/usr/bin/env bash

for file in "$@"; do
    echo "File: $file" #

    if [[ "$file" == ./*.nix ]]; then
        base="${file%.nix}"                     # remove .nix

        mkdir -p "$base"                        # create dir
        mv "$file" "$base/default.nix"          # move file to dir
        
        echo "Moved $file -> $base/default.nix" #
    fi
done
