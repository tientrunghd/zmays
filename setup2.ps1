sudo apt update
sudo apt install --assume-yes wget tasksel
[[ $(/usr/bin/lsb_release --codename --short) == "stretch" ]] && \
   sudo apt install --assume-yes libgbm1/stretch-backports
   wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
    sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
    sudo apt install --assume-yes task-xfce-desktop
    sudo systemctl disable lightdm.service
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_current_amd64.deb
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AdQt8qjPfMc3b-71ocZcRiKxbwG93Nju7IJhD6tSLxQUkbGimjQxZfKUcc0NGyhkB_gxiw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)