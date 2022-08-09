xcompmgr &		        # xcompmgr for transparency
dunst &			        # dunst for notifications
xset r rate 300 50 &	# Speed xrate up
setbg & 		        # set background
ibus-daemon -rdx &      # start ibus
light -S 60 &           # set brightness to 60%
exec dwm
