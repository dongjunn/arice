sudo add-apt-repository ppa:jasonpleau/rofi
sudo apt update
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
                     vim \
                     rxvt-unicode \
                     rofi
				                     

git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install

# running bspwm
mkdir -p ~/.config/{bspwm,sxhkd}
cp /home/j/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /home/j/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc


echo "BSPWM install finished!"
