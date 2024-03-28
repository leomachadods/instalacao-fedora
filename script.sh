#!/bin/bash

#System updates
sudo dnf update -y
sudo dnf install -y \
 https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Flatpaks (Apps)
yes | flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
yes | flatpak install flathub org.prismlauncher.PrismLauncher
yes | flatpak install flathub com.google.Chrome
yes | flatpak install flathub com.discordapp.Discord  
yes | flatpak install flathub com.valvesoftware.Steam
yes | flatpak install flathub sh.ppy.osu
yes | flatpak install flathub com.mattjakeman.ExtensionManager
yes | flatpak install flathub com.github.tchx84.Flatseal
yes | flatpak install flathub org.kde.krita

#Complementary apps
sudo dnf install -y unzip
sudo dnf install -y gnome-tweaks 
curl https://getmic.ro | bash
sudo mv micro /usr/bin

for arg in "$@"
do
	#Tablet driver xp pen
	if [ $arg == "--xppen" ]; then
		echo "Downloading xp pen drivers..."
		wget -P ~/Documents/ https://www.xp-pen.com/la-pt/download/file.html?id=2106&pid=718&ext=gz
		wait
		cd ~/Documents
		mv "file.html?id=2106" file.tar.gz
		tar -xvzf file.tar.gz
		directory=$(find . -name "XPPenLinux*")
		cd "$directory"
		sudo ./install.sh
		cd ..
		rm file.tar.gz
done
