#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbacklight

# INCLUDES make,etc.
sudo apt install -y build-essential

# Microcode for Intel/AMD
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode

# Network Manager
sudo apt install -y network-manager

# Essential packages: networking, files, power, system discovery, git
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager policykit-1-gnome git timeshift

# Sound packages
sudo apt install -y pipewire-alsa pipewire-jack pipewire-audio alsa-utils

# Terminal (eg. terminator,kitty)
sudo apt install -y kitty

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Packages needed dwm after installation
sudo apt install -y picom dunst libnotify-bin unzip

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
# sudo apt install -y micro
sudo apt install -y neovim

# Install fonts
sudo apt install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

# Other packages
sudo apt install -y feh lxappearance fastfetch htop btop

# Flatpak
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Enable services
sudo systemctl enable acpid
sudo systemctl enable bluetooth
sudo systemctl enable cups
sudo systemctl enable NetworkManager
systemctl --user enable wireplumber pipewire pipewire-pulse


# Install Nerd Fonts
# source ~/dwm-debian/nerdfonts.sh

# sudo apt autoremove

printf "\e[1;32mDone! you can now reboot.\e[0m\n"
