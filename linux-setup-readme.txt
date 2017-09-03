###################################################
# Run the following commands

# vim
sudo apt-get install vim

# keepassx
sudo apt-get install keepassx

# git
sudo apt-get install git

# git lol
git config --global --add alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"

###################################################
###################################################

###################################################
1. Create $HOME/Apps folder

###################################################
# WiFi driver set up (tried: MBA with ubuntu/mint)

1. cd USB_DRIVE/pool/main/d/dkms
sudo dpkg -i *.deb

2. cd USB_DRIVE/pool/restricted/b/bcmwl/
sudo dpkg -i *.deb

In step 1 it is possible that says that gcc/libc6-dev/etc is not installed.
Get it from somewhere else/the usb drive may have it.

###################################################
# Languages

1. Add Armenian (phonetic)
2. Add Russian (phonetic)

###################################################
# Telegram

1. Download from Telegram.org
2. Copy the content to $HOME/Apps/Telegram

###################################################
# Keyboard

- xmodmap and xev are used for keyboard remapping (but I didn't use it)
- sudo apt-get install x11-xserver-utils or something similar
- xmodmap .xmodmaprc
- use xev/xmodmap for further mappings
- the CMD keys are marked as WIN keys inside ubuntu
  - so control->keyboard->layouts->options->use win as ctrl

- to fix the tilde issue: /sys/module/hid_apple/parameters/iso_layout has to contain a single "0". So add "echo 0 > /sys/module/hid_apple/parameters/iso_layout" somewhere that exectues at startup. Forums suggests /etc/rc.local but I don't know why - didn't work for me. I just edited the iso_layout file manually and it worked.

###################################################
# Terminal

Can modify keyboard shortcuts for next/prev tab

