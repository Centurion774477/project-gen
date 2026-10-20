#!/bin/sh

# Don't just dump all the files/directories into the current directory.
# guard against no root being provided; prints usage in that case
root="${1:?Usage: $0 <root-dir>}"

mkdir -p assets/sound
mkdir -p assets/graphics

mkdir -p "$root/src"

mkdir -p "$root/assets/sound" "$root/assets/graphics"

touch "$root/README.md" "$root/LICENSE" "$root/.gitignore"

echo "Finished generating your project inside $root."
