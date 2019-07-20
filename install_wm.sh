: '
To start bspwm at login add `exec bspwm` to the bottom of your ~/.xinitrc or ~/.xprofile (depending on how your launch your X/Display manager). The example bspwmrc launches sxhkd for you.
'
sudo apt-get update

sudo apt-get install build-essential
sudo apt-get install libxcb-xinerama0-dev \
                     libxcb-icccm4-dev \
                     libxcb-randr0-dev \
                     libxcb-util0-dev \
                     libxcb-ewmh-dev \
                     libxcb-keysyms1-dev \
                     libxcb-shape0-dev \
                     libxcb-xtest0-dev \
                     gcc \
                     make \
                     xcb \
                     git \
                     libasound2-dev \
                     libxft-dev \
                     libx11-xcb-dev \
                     vim
                     
sudo apt-get install rxvt-unicode
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install

# running bspwm
mkdir -p ~/.config/{bspwm,sxhkd}
cp /home/j/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /home/j/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
echo "Make sure to create the .xinit!"
