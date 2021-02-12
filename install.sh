#!/bin/bash
sudo xbps-install -Suy &&
sudo xbps-install -Sy xorg base-devel git curl wget libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel bspwm sxhkd dunst flameshot htop neovim polybar python jq font-weather-icons font-awesome5 noto-fonts-cjk noto-fonts-emoji picom numlockx hsetroot firefox chrony lxappearance rofi gtk-engine-murrine gtk2-engines font-iosevka void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree &&
sudo ln -s /etc/sv/chronyd /var/service/ &&
cp .zshrc ~/ &&
cp .xinitrc ~/ &&
mkdir -p /.config/
cp -r .config/* ~/.config/ &&
mkdir -p /.icons/
cp -r .icons/* ~/.icons/ &&
mkdir -p /.fonts/
cp -r .fonts/* ~/.fonts/ &&
cp .Xresources ~/
cp -r .config/rofi ~/.config/
sudo xbps-install -Sy zsh &&
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
cp -r zsh-autocomplete ~/.zinit/plugins/ &&
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/ &&
sudo xbps-reconfigure -f fontconfig &&
sudo fc-cache -f -v &&
cd st &&
make &&
sudo make install &&
cd .. &&
chmod +x ~/.config/polybar/scripts/* &&
cd ctlos-qogir &&
bash install.sh &&
cd .. &&
cd Qogir-icon-theme &&
bash install.sh &&
cd .. &&
sudo xbps-remove -Oo &&
cd .. &&
rm -rf dots &&
chsh -s /bin/zsh
