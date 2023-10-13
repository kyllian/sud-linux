#!/bin/bash

DIR=~/Source/Repos/sud-linux/eos/post-install/aur-programs/protonvpn-cli

BRC=$DIR/.bashrc
cat "$BRC" >> ~/.bashrc

# echo "Logging in to ProtonVPN is necessary before you can connect to the internet."
