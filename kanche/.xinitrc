# define Xresources
userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

if [ -f "$sysresources" ]; then
      xrdb -merge "$sysresources"
fi

# merge with whats available
if [ -f "$userresources" ]; then
   xrdb -merge "$userresources"
fi
