# Manjaro Setup

Instructions for setting up and configuring a Manjaro machine how I like it.

## Installation instructions

- In order to run this code we need `yq` and this config.
- In order to get `yq` we need `mise` and this config.
- In order to get `mise`, we need to install it.
- In order to get config, we need to be able to clone the code from GitHub.
- In order to be able to clone from GitHub, we need Git and an SSH connection to GitHub.
- In order to connect to GitHub, we need to sign in into GitHub.
- In order to sign in to GitHub, we need a browser and my credentials (found in my Password Manager).

So, after installing Manjaro:

1. Open Firefox (already installed).
2. Install Password Manager browser extension.
3. Login to Password Manager.
4. Login to [GitHub](https://github.com/login) using credentials.
5. Open a terminal (e.g. pre-installed "Console" app) and run the following:

```bash
sudo pacman --sync github-cli
gh auth login # And setup a SSH Key!

# Install dots
echo "" > .bashrc
echo "" > .zshrc
curl -s "https://raw.githubusercontent.com/Harmelodic/dots/main/install" | bash

# Install mise and mise-managed tools
curl "https://mise.run" | sh
mise install

install-my-wanted-arch-packages
uninstall-my-unwanted-arch-packages
```

Then install apps sourced from Arch User Repository (AUR)

- Enable AUR packages in the Pamac app.
- Install the AUR packages listed in `install.arch-user-repository` in `config-files/manjaro-packages.yaml` via the
  Pamac app (this allows easy confirming to trust PGP keys and things, which is more error-prone when using the `pamac`
  CLI).
- Install the IDEs you want from JetBrains Toolbox.

## Post installation configuration

### Configure Git

Get your GPG key. Then import it:

```bash
gpg --import secret.asc
gpg --edit-key <key_name>
trust
save
```

Then set `dots/config-files/vars` file variables:

- `GIT_SWITCH_ME_NAME` to `Harmelodic`.
- `GIT_SWITCH_ME_EMAIL` to your email.
- `GIT_SWITCH_ME_GPG_SEC` to the value out of `gpgz <YOUR_EMAIL>`.

Then run: `gsw me` to switch to using this Git config.

### Configure Docker

Try `docker images`. If docker API (socket) cannot connect or is inaccessible then try:

```bash
sudo systemctl enable docker # Ensure `docker` daemon starts on boot.
sudo systemctl start docker # Ensure `docker` daemon is started.
sudo groupadd docker # Create `docker` group
sudo usermod --append --groups docker $USER # Add self to `docker` group.
```

Log out and then log back in to get group membership re-evaluated.

### Configure Printing & Service Discovery

CUPS is the (Common UNIX) Printing System. It uses Avahi to discover printers, so that also needs enabling.

```bash
sudo systemctl enable avahi-daemon
sudo systemctl start avahi-daemon
sudo systemctl enable cups
sudo systemctl start cups
```

Go add printers in the [CUPS admin](http://localhost:631).

With the `cnijfilter2` AUR package, you might get 2 options:

- <PRINTER_NAME>
- <PRINER_NAME>_<MAC_Address>

Pick the one with the MAC Address.

### Configure OpenRGB

OpenRGB is a manufacturer-agnostic way of controlling the RGB of devices that have RGB control.

```bash
sudo systemctl enable openrgb
sudo systemctl start openrgb
```

Open OpenRGB, let it scan for devices and then configure colours as you want.

### Configure VS Code

```bash
rescode
```

## Configure Keyd

```bash
sudo systemctl enable keyd
sudo systemctl start keyd
sudo cp "$DOTS/config-files/<profile>.keyd.default.conf" /etc/keyd/default.conf
```

### Install PIA VPN

Installing via an Arch Linux seemed to be a little broken, but installing manually worked.

- Download the [PIA VPN installation run script](https://www.privateinternetaccess.com/download/linux-vpn)
- `chmod +x` the script.
- Run the script to install PIA VPN.

### Manually configure settings

- Desktop background.
- Display scaling - might need to enable fractal scaling with
  `gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"`.
- Right-click on touchpad clicky AND two-finger tap, if using a touchpad.
- `Keyboard` > `Keyboard Shortcuts` > `View and Customise Shortcuts` - Remove anything set to `Super+Space`, since we'll
  use that for a GNOME extension.
- Next GNOME workspace be `Super+Ctrl+Right`.
- Previous GNOME workspace be `Super+Ctrl+Left`.
- Maximise window be `Super+Up`.
- Window to Split Left be `Super+Left`.
- Window to Split Right be `Super+Right`.
- `Tweaks` > `Appearance` > `Styles`:
	- Cursor: `Bibata-Original-Classic`
	- Icons: `Papirus-Maia`
	- Shell: `Adwaita (default)`
	- Legacy Applications: `Adw-gtk3-dark`
- Pin the apps you want pinned to the dock! Probably:
	- Files
	- Firefox
	- Thunderbird
	- Calendar
	- Signal
	- Discord
	- Steam
	- Spotify
	- Obsidian
	- IntelliJ
	- Android Studio

### Install GNOME Extensions

Install the GNOME extensions listed in `config-files/gnome-extensions.txt` by searching for them
at [GNOME Extensions](https://extensions.gnome.org).

### Configure GNOME Extensions

- Configure GNOME extensions:
	- Search Light
		- `General` > `Keybindings` > `Search`. Set to `Super+Space`.
		- `Appearance` > `Appearance` > `Border Radius`. Set to about 50% / half way.
		- `Appearance` > `Background` > `Background Color`. Set to `#000000` and no transparency.
	- Emoji Copy
		- `Emoji Copy Keybind`. Set to `<Super><Alt>space`.
	- Dash to Dock
		- `Appearance` > `Show overview on startup`. Toggle `OFF`.
- Enable ntp: `sudo timedatectl set-ntp true`.

### Turn off Zoom AI shite

Zoom does the dark pattern of hiding the AI settings in "advanced settings" only accessible on the web.

- Open Zoom Workplace app (installed via AUR)
- Go to Settings > Advanced > Open Advanced Settings (on the web)
- Go to the "AI Companion" tab
- Turn everything `OFF`.

## Useful links

- [ArchLinux](https://archlinux.org)
- [ArchLinux Packages](https://archlinux.org/packages)
- [ArchLinux User Repository (AUR) Packages](https://aur.archlinux.org/packages)
- [GNOME](https://www.gnome.org)
- [GNOME Shell Extensions](https://extensions.gnome.org)
- [GNOME Contribute Welcome](https://welcome.gnome.org)
- [GNOME Developers](https://developer.gnome.org)
- [GNOME Discourse](https://discourse.gnome.org)
- [GNOME GitLab](https://gitlab.gnome.org)
- [GNOME Project Handbook](https://handbook.gnome.org)
- [Manjaro](https://manjaro.org)
