# Dotfiles
You will find configfiles for an Arch Linux installation using i3, polybar, kitty and zsh.

I use [yadm](https://github.com/TheLocehiliosan/yadm) to manage this repository.

## Dependencies
### Pacman
- alacritty
- bash
- bat
- code
- curl
- dmenu
- dunst
- exa
- feh
- ffmpegthumbnailer
- git
- highlight
- i3-wm
- i3lock
- imagemagick
- jq
- kitty
- ly
- mpv
- neovim
- networkmanager
- nvidia
- nvidia-settings
- pavucontrol
- pdfarranger
- picom
- playerctl
- python
- python-pip
- qgis
- ranger
- redshift
- ripgrep
- rofi
- rofi-calc
- udevil
- ufw
- wget
- xclip
- yad
- yadm
- zsh

### AUR
- insomnia-bin
- intellij-idea-ultimate-edition
- nerd-fonts-complete
- polybar
- spotify

### Manual Installation
- https://wiki.archlinux.org/title/Zsh#On-demand_rehash
- paru
	- https://github.com/morganamilo/paru#installation
- sublime-merge
	- https://www.sublimemerge.com/docs/linux_repositories#pacman
- sublime-text
	- https://www.sublimetext.com/docs/linux_repositories.html#pacman

## Firefox
### Create Profile
```
firefox --ProfileManager
```

### Start Profile Script
Place either under `~/.local/bin/<profile-name>` or `~/scripts/<profile-name>`.
```
#!/bin/sh

firefox --profile path/to/profile/directory
```

### about:config
- `widget.gtk.overlay-scrollbars.enabled=false`
	- Firefox 100 added 'GTK Overlay Scrollbars' wich keeps scroll bar visible when mouse is at window border.
- `browser.fullscreen.autohide=false`
	- Allways keep interface visible when activating fullscreen via F11.
- `webgl.force-enabled=true`
	- Sometimes fixes webgl after system update.
