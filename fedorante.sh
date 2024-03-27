#!/bin/bash

#System updates
sudo dnf update -y
sudo dnf install -y \
 https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Flatpaks (Apps)
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.prismlauncher.PrismLauncher
flatpak install flathub com.google.Chrome
flatpak install flathub com.discordapp.Discord  
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub sh.ppy.osu
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.kde.krita

#Nvidia drivers
yes | sudo dnf update --refresh
yes | sudo dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig
yes | sudo dnf makecache
yes | sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

#Complementary apps
sudo dnf install -y unzip
sudo dnf install -y gnome-tweaks 

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
	#Reboot system
	elif [ $arg == "--reboot" ]; then
		echo "Rebooting system..."
		reboot
	fi
done
