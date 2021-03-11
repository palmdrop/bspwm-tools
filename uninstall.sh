#!/bin/sh

# Install location
DEST=/usr/local/bin/

# Loop over all the bspc scripts
for file in bspc*
do
    # Remove the corresponding symlink 
    sudo rm -vi "$DEST$file"
done
