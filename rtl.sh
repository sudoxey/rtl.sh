sudo apt update
sudo apt install -y dkms git
sudo git clone 'https://github.com/RinCat/RTL88x2BU-Linux-Driver.git' /usr/src/rtl88x2bu-git
sudo sed -i 's/PACKAGE_VERSION="@PKGVER@"/PACKAGE_VERSION="git"/g' /usr/src/rtl88x2bu-git/dkms.conf
sudo dkms add -m rtl88x2bu -v git
sudo dkms autoinstall
sudo reboot
