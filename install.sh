#!/bin/bash
sudo xbps-install -Suy &&
sudo xbps-install -Sy xorg base-devel git curl wget libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel bspwm sxhkd dunst flameshot htop neovim polybar python jq font-weather-icons font-awesome5 noto-fonts-cjk noto-fonts-emoji picom numlockx hsetroot firefox chrony lxappearance rofi &&
sudo ln -s /etc/sv/chronyd /var/service/ &&
sudo cp .alias_zsh ~/ &&
sudo cp .zshrc ~/ &&
sudo cp .xinitrc ~/ &&
sudo mkdir -p /.config/
sudo cp -r .config/* ~/.config/ &&
sudo mkdir -p /.icons/
sudo cp -r .icons/* ~/.icons/ &&
sudo mkdir -p /.fonts/
sudo cp -r .fonts/* ~/.fonts/ &&
sudo cp .Xresources ~/
sudo xbps-install -Sy zsh &&
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
sudo cp -r zsh-autocomplete ~/.oh-my-zsh/plugins/ &&
sudo git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting &&
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/ &&
sudo xbps-reconfigure -f fontconfig &&
sudo fc-cache -f -v &&
cd st &&
make &&
sudo make install &&
cd .. &&
sudo chmod +x ~/.config/polybar/scripts/*
sudo xbps-remove -Oo &&
sudo cd .. &&
sudo rm -rf dots &&
sudo chsh -s /bin/zsh &&
