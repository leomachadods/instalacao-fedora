sudo dnf update --refresh
sudo dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig
sudo dnf makecache
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda
