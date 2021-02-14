#!/bin/bash
sudo xbps-install -Suy &&
sudo xbps-install -Sy xorg base-devel git curl wget libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel bspwm sxhkd dunst flameshot htop neovim polybar python jq font-weather-icons font-awesome5 noto-fonts-cjk noto-fonts-emoji picom numlockx hsetroot firefox chrony lxappearance rofi gtk-engine-murrine gtk2-engines font-iosevka void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree xtools zsh &&
sudo ln -s /etc/sv/chronyd /var/service/ &&
cp .zshrc ~ &&
cp .xinitrc ~ &&
cp .Xresources ~ &&
cp .p10k.zsh ~ &&
cp -r .config/ ~ &&
cp -r .icons/ ~ &&
cp -r .fonts/ ~ &&
mkdir ~/.zinit &&
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin &&
cp -r zsh-autocomplete ~/.zinit/plugins/ &&
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/ &&
sudo xbps-reconfigure -f fontconfig &&
sudo fc-cache -f -v &&
cd ~/dots/terminal &&
make &&
sudo make install &&
chmod +x ~/.config/polybar/scripts/* &&
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &&
cd ~/dots/icon-theme &&
bash install.sh &&
cd ~/dots/theme &&
bash install.sh &&
cd ~ &&
sudo xbps-remove -Oo &&
chsh -s /bin/zsh
