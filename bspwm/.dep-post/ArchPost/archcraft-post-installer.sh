#!/bin/sh

# Makes The File Executable
	# sudo chmod +x archcraft-post-installer.sh
#
# Run The File
	# sudo ./archcraft-post-installer.sh
#
# Update System
	echo "Updating The System..."
	sudo pacman -Syu
#
# Install Figlet For ASCII Banner Text
	yes | sudo pacman -S figlet
#

# Essentials
### Base Devel 
	figlet Installing Tools 
	sudo pacman -S --needed base-devel
###

### Github CLI
  figlet Installing GitHub CLI
  yes | yay -S github-cli
  # gh auth login
###

### Curl
	figlet Installing Curl 
	yes | yay -S curl
###

### WGET
	figlet Installing WGET
	yes | yay -S wget
###

### PipeWire
	figlet Installing PipeWire
	yay -S pipewire pipewire-pulse
###

### Pavu Volume Control
	figlet Installing Pavu
	yes | yay -S pavucontrol
###

### Mesa
	figlet Installing Mesa
	yes | yay -S mesa
###

# Internet

### Brave
	figlet Installing Brave
	yes | yay -S brave-bin
###

# Development
### Notion
	figlet Installing Notion
	yay -S notion-app
###

### Super Productivity
	figlet Installing SuperProductivity
	git clone https://aur.archlinux.org/superproductivity-bin.git
	cd superproductivity-bin
	makepkg -si
###

### VirtualBox
	figlet Installing VirtualBox
	yay -S virtualbox virtualbox-host-modules-arch
###

### Yarn, NPM + NodeJS
  figlet Yarn, NPM + NodeJS
  yes | yay -S yarn npm
###

### Yarn Berry
	figlet Installing Yarn Berry
	yarn set version berry
###

### PNPM
	yes | yay -S pnpm
###

### Node Version Manager
	figlet Installing Node Version Manager
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	export NVM_DIR="$HOME/.nvm"  
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
	nvm install --lts
###

### VSCodium
	figlet Installing VSCodium
	yes | yay -S vscodium
###

### NeoVim
	figlet Installing NeoVim
	yes | yay -S neovim
###

### LunarVim
	figlet Installing LunarVim
  bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
###

# Video, Image And Audio
### OBS Studio
	figlet Installing OBS Studio
	yes | yay -S obs-studio
###

### SCRCPY
	figlet Installing SCRCPY
	yes | yay -S scrcpy android-udev android-tools
###

### Ani-CLI
	figlet Installing Ani-CLI
	git clone https://github.com/pystardust/ani-cli 
	sudo cp -r -f ani-cli ~/ani-cli
 	sudo rm -rf ani-cli
###

### MPV E VLC
	figlet Installing MPV And VLC
	yes | yay -S mpv vlc
	echo "Setting VLC As Default"
	xdg-mime default vlc.desktop video/mp4
###

# Utilities
### Spotify
	figlet Installing Spotify
	yes | yay -S spotify
###

### Telegram
	figlet Installing Telegram
	yes | yay -S telegram-desktop
###

### Whatsapp
	echo "Don't Forget To Create A Whatsapp WebApp"
	# Crie Um WebApp
###

### WebApp Manager
	figlet Installing WebApp Manager
	yes | yay -S webapp-manager
###

### Evolution
	figlet Installing Evolution
	yes | yay -S evolution
###

### Déjà Dup
	figlet Installing Backups 
	yay -S deja-dup
###

### AnyDesk
	figlet Installing AnyDesk
	yes | yay -S anydesk-bin
###

### Piper
	figlet Installing Piper
	yes | yay -S piper
###

### NoiseTorch
	figlet Installing NoiseTorch
	yay -S noisetorch
###

### Inxi
	figlet Installing INXI
	yes | yay -S inxi
###

### NCMPCPP
	figlet Installing NCMPCPP
	yes | yay -S ncmpcpp
###

### Wine
	figlet Installing Wine
	yay -S wine winetricks wine-gecko mono
###

### SpaceShip ZSH
	figlet Installing SpaceShip ZSH
	git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
###

### ZInit
	figlet Installing ZInit
	bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
###

# Games
### Discord
	# https://www.modmy.com/how-install-discord-linux
	figlet Installing Discord
  	yes | yay -S discord
###

### Steam
	figlet Installing Steam
	yay -S steam
###

### Java
	figlet Installing Java
	yes | yay -S jre-openjdk 
###

# Other Settings
### Fonts For The System
	figlet Installing Fonts
	yes | yay -S powerline powerline-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-ms-fonts ttf-linux-libertine ttf-dejavu 
###

### Apply Dark Mode
	figlet Enabling Dark Mode
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
###

### Install Dependencies For Polybar Spotify 
  figlet Polybar Spotify Dependencies
  yay -S python python-dbus playerctl
###

### Upgrade Entire System
	echo "Updating The Entire System"
	yay -Syu
###