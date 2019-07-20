: '
	PolyBar compile and build script
	https://github.com/polybar/polybar/releases/download/3.3.1/polybar-3.3.1.tar 	
 '
# Dependencies for polybar to build and run
sudo apt-get install -y build-essential \
						clang-5.0 \
						cmake \
						cmake-data \
						pkg-config \
						python3-sphinx \
						libcairo2-dev \
						libxcb1-dev \
						libxcb-util0-dev \
						libxcb-randr0-dev \
						libxcb-composite0-dev \
						python-xcbgen \
						xcb-proto \
						libxcb-image0-dev \
						libxcb-ewmh-dev \
						libxcb-icccm4-dev \
						libxcb-xkb-dev \
						libxcb-xrm-dev \
						libxcb-cursor-dev \
						libasound2-dev \
						libpulse-dev \
						libmpdclient-dev \
						libcurl4-openssl-dev \
						libcurlpp-dev \
						libiw-dev \
						libnl-genl-3-dev

git clone --recursive https://github.com/polybar/polybar
cd polybar && ./build.sh 
echo 'Complie finished ! you may now add polybar to you rice.'
# curl -LO https://github.com/polybar/polybar/releases/download/3.3.1/polybar-3.3.1.tar
# tar -xvf polybar-3.3.1.tar
# cd polybar-3.3.1
# cmake ..
# make -j$(nproc)
# sudo make install
# cd build
# make userconfig
# cd ..
# polybar example


