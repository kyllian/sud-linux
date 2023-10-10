#!/bin/bash
#
# This file can contain commands that will be executed at the end of
# EndeavourOS install (online mode only) on the target system.
# The commands will be executed as root.
#
# This allows you to customize the installed system in several ways!
#
# If you add commands to this file, start the install process after
# saving this file.
#
# Tip: save your customized commands into a file on an internet server
# and fetch that file with command:
#
#     wget -O ~/user_commands.bash "URL-referring-the-file"
#
# Ideas for customization:
#   - install packages
#   - remove packages
#   - enable or disable system services
#   - writing dotfiles under $HOME
#   - etc.
#
# Example commands:
#
#     pacman -S --noconfirm --needed gufw geany chromium
#     pacman -Rsn --noconfirm xed
#     systemctl enable ufw
#
# There are some limitations to the commands:
#   - The 'pacman' commands mentioned above require option '--noconfirm',
#     otherwise the install process may hang because pacman waits for a
#     confirmation!
#   - Installing packages with 'yay' does not work because yay may not
#     be run as root.
#     The 'makepkg' command suffers from the same limitation.
#     This essentially blocks installing AUR packages here.
#
# Advanced tip (for ISOs since year 2022):
#    To write files directly into $HOME, you can find the new username
#    as the first parameter given to user_commands.bash, e.g.
#        username="$1"
#    Then you may write files under folder
#        /home/$username
#
# For ISOs released before year 2022:
#    Find your new username with command
#        username=$(cat /tmp/new_username.txt)
#
# New installer feature at 2023-Feb-02:
#    To help customizing calamares on the ISO, user_commands.bash will be called
#    (as root) with 2 parameters:
#        --iso-config
#        "install_mode"     (one of: online, offline, community)
#    before starting the calamares installer.
#    For example:
#        bash ~/user_commands.bash --iso-config online
#
#----------------------------------------------------------------------------------
# Full example (to try it, remove the first '#' from the lines below):
#
# Note: needs ISO since year 2022

username="$1"

# Copy the cloned repo (including any modifications the user made to it) to the
#    default user's home folder, and change the owner of those files to that user.
mkdir -p /home/$username/Source/Repos/sud-linux/
chown -Rf $username /home/$username/Source/
cp -r ~/sud-linux/ /home/$username/Source/Repos/sud-linux/

# Copy the final install user-configuration files to the repo to confirm to the user what was used by the installer.
cp ~/user_pkglist.txt /home/$username/Source/Repos/sud-linux/eos/installed_pkglist.txt
cp ~/user_commands.bash /home/$username/Source/Repos/sud-linux/eos/executed_commands.bash

# echo "# Hello world!" >> /home/$username/.bashrc
# pacman -S --noconfirm --needed geany chromium libreoffice-fresh
