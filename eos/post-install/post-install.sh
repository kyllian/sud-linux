#!/bin/bash

DIR=~/Source/Repos/sud-linux/eos/post-install

# Install AUR programs
bash $DIR/aur-programs/install.sh

# Configure AUR programs
bash $DIR/aur-programs/configure.sh
