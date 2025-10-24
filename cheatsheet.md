# Cheat Sheet

This will serve as my master cheatsheet for all things that i'm afraid will leave my brain before they become second nature

## Linux (Arch)

### Updating PGP Keys

There are two sets of commands that will help here:

The first is to remove the existing keys and repopulate

```bash
$ sudo rm -rfd /etc/pacman.d/gnupg
$ sudo pacman-key --init
$ sudo pacman-key --populate
```

The second set of commands will pull the latest keys from pacman and apply them

```bash
$ sudo pacman -Sy archlinux-keyring
```

### Nouveau (Vulkan)

For anything GPU / nouveau related, just consult the wiki. It's pretty comprehensize.

[Nouveau] (https://wiki.archlinux.org/title/Nouveau)


