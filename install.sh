#!/bin/sh

# Install location
DEST=/usr/local/bin/

# Loop over all the bspc scripts
for file in bspc*
do
    # Create a symlink to the file in this repository
    sudo ln -vs "$(realpath "$file")" $DEST
done
