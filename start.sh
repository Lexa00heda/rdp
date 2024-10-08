wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
    apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt install ./chrome-remote-desktop_current_amd64.deb -y
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo systemctl disable lightdm.service
#firefox
sudo DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:mozillateam/ppa -y
sudo apt install firefox-esr -y
