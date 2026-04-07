#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Updating system..."
sudo xbps-install -Syu

echo "==> Installing packages..."
sudo xbps-install -Sy \
    xorg base-devel git curl wget \
    libXft-devel libX11-devel harfbuzz-devel libXext-devel \
    libXrender-devel libXinerama-devel \
    bspwm sxhkd dunst flameshot htop neovim polybar python3 jq \
    font-weather-icons font-awesome6 noto-fonts-cjk noto-fonts-emoji \
    picom numlockx hsetroot firefox chrony lxappearance rofi \
    gtk-engine-murrine gtk2-engines font-iosevka \
    void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree \
    xtools zsh nsxiv \
    pipewire wireplumber alsa-pipewire pavucontrol \
    xdg-user-dirs xdg-utils

echo "==> Enabling services..."
sudo ln -sf /etc/sv/chronyd /var/service/

echo "==> Copying config files..."
cp "$SCRIPT_DIR/.zshrc" ~
cp "$SCRIPT_DIR/.xinitrc" ~
cp "$SCRIPT_DIR/.Xresources" ~
cp "$SCRIPT_DIR/.p10k.zsh" ~
cp -r "$SCRIPT_DIR/.config/" ~
cp -r "$SCRIPT_DIR/.icons/" ~
cp -r "$SCRIPT_DIR/.fonts/" ~

echo "==> Installing zinit..."
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

echo "==> Configuring fonts..."
sudo ln -sf /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo xbps-reconfigure -f fontconfig
sudo fc-cache -f -v

echo "==> Building st terminal..."
cd "$SCRIPT_DIR/terminal"
make clean
make
sudo make install

echo "==> Making scripts executable..."
chmod +x ~/.config/polybar/scripts/*

echo "==> Configuring OpenWeatherMap API key for polybar weather widget..."
echo "    Get a free API key at: https://openweathermap.org/appid"
printf "    Enter your OpenWeatherMap API key (or press Enter to skip): "
read -r OWM_KEY
if [ -n "$OWM_KEY" ]; then
    echo "OPENWEATHER_API_KEY=\"$OWM_KEY\"" > ~/.config/polybar/secrets
    echo "    API key saved to ~/.config/polybar/secrets"
else
    echo "    Skipped. You can add it later to ~/.config/polybar/secrets"
fi

echo "==> Creating user directories..."
xdg-user-dirs-update

echo "==> Installing icon theme..."
cd "$SCRIPT_DIR/icon-theme"
bash install.sh

echo "==> Installing GTK theme..."
cd "$SCRIPT_DIR/theme"
bash install.sh

echo "==> Cleaning up..."
sudo xbps-remove -Oo

echo "==> Changing shell to zsh..."
chsh -s /bin/zsh

echo "==> Done! Reboot to apply all changes."
