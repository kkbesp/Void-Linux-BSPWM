xrdb -merge ~/.Xresources &
hsetroot -cover ~/.config/.wall/wall.gif &
~/.config/polybar/launch.sh &
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" &
xsetroot -cursor_name left_ptr &
dunst &
picom &
sxhkd &
flameshot &
exec bspwm
