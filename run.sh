

sudo echo "Do you wnat to run this bash?"
read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    echo "\n\n\n\n\n nice :)"
else
    echo "bye bye :(("
    exec bash
fi
sudo apt --fix-broken install
sudo apt-get update
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a
sudo apt install curl
sudo apt-get update
sudo update-grub
sleep 2
clear

echo "=========================================== 1 ====> Arc theme"
sleep 3
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install --install-recommends arc-kde

echo "=========================================== 1 ====> Git"
sleep 1
sudo apt install git

echo "=========================================== 1 ====> Chrome"
sleep 1
#sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
sudo apt-get upgrade

echo "=========================================== 1 ====> VS Code "
sleep 3
#https://code.visualstudio.com/docs/setup/linux
#sudo dpkg -i code_1.11.2-1492070517_amd64.deb
#sudo apt-get install -f
#sudo apt-get upgrade
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

#echo "=========================================== 1 ====> Atom"
#sudo dpkg -i atom-amd64.deb
#sudo apt --fix-broken install

echo "=========================================== 1 ====> VLC"
sleep 3
sudo apt-get install vlc

echo "=========================================== 1 ====> NodeJs"
sleep 3
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt --fix-broken install

echo "=========================================== 1 ====> Yakuake"
sleep 3
sudo apt-get install yakuake
#make it defualat

echo "=========================================== 1 ====> Steam "
sleep 3
#https://coolaj86.com/articles/how-to-install-steam-on-ubuntu.html
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7
REPO="deb http://repo.steampowered.com/steam/ $(lsb_release -cs) steam" echo "${REPO}" > /tmp/steam.list
sudo mv /tmp/steam.list /etc/apt/sources.list.d/ && sudo apt-get update
sudo apt-get install -y steam
sudo apt --fix-broken install
sudo apt-get update
sudo rm /var/lib/dpkg/lock


echo "=========================================== 1 ====> Telegram "
sleep 3
sudo add-apt-repository ppa:atareao/telegram && sudo apt-get update
sudo apt-get install telegram

echo "=========================================== 1 ====> Perspolise"
sudo add-apt-repository ppa:persepolis/ppa && sudo apt-get update
sudo apt-get install persepolis


echo "=========================================== 1 ====> Setingup VPN"
sleep 3
#sudo apt-get install network-manager-openvpn network-manager-openvpn-gnome && sudo cp -r certificates ~/Documents
#sudo openvpn --config von.conf


echo "=========================================== 1 ====> Handbreake"
sleep 3
sudo add-apt-repository ppa:stebbins/handbrake-releases && sudo apt-get update
sudo apt --fix-broken install
sudo apt-get install handbrake-cli handbrake


echo "=========================================== 1 ====> Oh My Git !"
sleep 3
# Copy the awesome fonts to ~/.fonts
cd /tmp
git clone http://github.com/gabrielelana/awesome-terminal-fonts
cd awesome-terminal-fonts
git checkout patching-strategy
mkdir -p ~/.fonts
cp patched/*.ttf ~/.fonts

# update the font-info cache
sudo fc-cache -fv ~/.fonts

git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git && echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc

echo "=========================================== 1 ====> star calender!"
sleep 3
cd  && git clone https://github.com/ilius/starcal.git && cd starcal && sudo ./install-ubuntu && cd

echo "=========================================== 1 ====> Persian Fonts"
sleep 3
cd && git clone https://github.com/fzerorubigd/persian-fonts-linux.git && cd persian-fonts-linux/ && ./farsifonts.sh && cd


echo "=========================================== 1 ====> Spotify"
sleep 3
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client --fix-broken
         

         

echo "=========================================== 1 ====> Tor and Selektor"
sleep 3    
sudo apt install tor tor-geoipdb
sudo sed -i 's/RUN_DAEMON=\"yes\"/RUN_DAEMON=\"no\"/' /etc/default/tor
sudo service tor stop

sudo dpkg -i selektor-*.deb
sudo apt-get install -f
#you can use 'sudo dpkg -i' to install  .deb packs





#read -r -p "do you want to reset? [y/N] " response
#if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
#then
#sleep 1
#echo "3"
#sleep 1
#echo "2"
#sleep 1
#echo "1"
#sleep 1
#echo "Gooooo !"
#    sudo reboot
#else
#    sudo echo "Done !"
#    exec bash
#fi

