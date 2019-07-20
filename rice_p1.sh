: '
RICE for ubuntu mate 18.04
This is a script to install the dependencies for my rice
make sure to setup sudo password before you run this script
`sudo -i passwd` or `sudo passwd root` 
' 
su -
sudo apt update && sudo apt install vim sudo
sudo apt install git stow
adduser jun sudo

# installing BSPWM and related core pacakages
sudo apt install bspwm sxhkd xterm suckless-tools feh compton dunst libnotify-bin lemonbar xdo amixer acpi gnome-keyring

# To make sure dunst works unencumbered, we better remove MATE’s own notification daemon:
sudo apt remove mate-notification-daemon

# GTK icon theme
sudo apt install papirus-icon-theme

# fixed and proportional fonts
sudo apt install fonts-firacode fonts-hack fonts-roboto fonts-dejavu fonts-dejavu-extra fonts-noto-color-emoji fonts-symbola
sudo apt install xfonts-terminus

# Terminal tools
sudo apt install tmux vim-gtk3
sudo apt install newsboat scrot
sudo apt install xbacklight

# music setup
sudo apt install mpd mpc ncmpcpp mpdris2 python-mutagen playerctl

# extra packages
sudo apt install mpv youtube-dl imagemagick rsync qtpass pavucontrol sxiv apcalc
#email change to gmail cli>?
sudo apt install thunderbird enigmail lightning
sudo apt install xul-ext-sogo-connector

# Additional lang support and fonts
sudo apt install hunspell {a,hun}spell-el
sudo apt-get install language-pack-ja  
sudo apt-get install japan* 
sudo apt-get install language-pack-ko
sudo apt-get install korean*
sudo apt-get install fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core

# firefox setup might replace with chrome fam
sudo apt install webext-noscript webext-https-everywhere webext-ublock-origin webext-privacy-badger

# other packages
sudo apt install audacity darktable epiphany-browser
sudo apt install vrms neofetch
sudo apt install git
# flatpack
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install org.gnome.Podcasts org.gnome.clocks org.kde.kdenlive


# Setting up simlinks to our dotfiles using stow, if stow complains about exisiting files 
# you need to delete,rename, or move them to another location. common offenders are ~/.bashrc
# ~/.profile which block the stow package called "shell".
cd ..
git clone https://gitlab.com/protesilaos/cpdfd ~/cpdfd
cd ~/cpdfd
ls --ignore='[A-Z]*'
stow -v bin bspwm colours compton dunst fontconfig gtk keyring music newsboat shell tmux vim xterm

# Ready to log into BSPWM, make sure you reboot the system
echo 'reboot your system and log into BSPWM...'
