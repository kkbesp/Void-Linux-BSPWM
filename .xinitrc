xrdb -merge ~/.Xresources &
hsetroot -cover ~/.config/.wall/bg.jpg &
~/.config/polybar/launch.sh &
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" &
xsetroot -cursor_name left_ptr &
exec bspwm
