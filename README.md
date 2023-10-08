# sud-linux
Scripts for linux install automation, only because I have a habit of unwittingly bricking the installation.

## EOS
https://discovery.endeavouros.com/installation/customizing-the-endeavouros-install-process/2022/03/

This repo contains my own versions of the `user_pkglist.txt` and `user_commands.bash` files, as well as some utility scripts to run before and after installation.

I recommend reading up on EOS, the welcome app, and how to customize the install process as a prerequisite to modifying this tool to your liking.

The functionality of the tools here is quite limited at the moment, but I intend to fill it out as I fine-tune my own installation.

### EOS Tools Tutorial
Clone the repo when the live environment first boots:

```
git clone https://github.com/kyllian/sud-linux.git ~/sud-linux/
```

Run `pre-install.sh`, which will replace the default `user_pkglist.txt` and `user_commands.bash` files with the ones in the repo.

```
bash ~/sud-linux/eos/pre-install/pre-install.sh
```

The custom `sud_commands.bash` script also copies the whole cloned repo to your new EOS installation. This is helpful so that you can iterate and functionally test your install.

1. Install
2. Make changes to the tools in this repo, and fork if it you want.
3. Commit your changes.
4. Install again.
5. Repeat.

For after freshly booting your new installation, I've included another script that is intended to automate the installation of user programs and other configuration that calamares is incapable of doing as root during the OS installation.

```
bash ~/Source/Repos/sud-linux/eos/pre-install/pre-install.sh
```
