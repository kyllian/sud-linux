# When the live environment starts, we need some of the tools in the repo.
# git clone https://github.com/kyllian/sud-linux.git ~/sud-linux/

# Replace the content in default user_pkglist.txt and user_commands.bash with our own.
cp ~/sud-linux/eos/sud_pkglist.txt ~/user_pkglist.txt
cp ~/sud-linux/eos/sud_commands.bash ~/user_commands.bash