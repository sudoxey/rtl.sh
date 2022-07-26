echo -e '\n\e[1;33m// Installing RTL88x2BU driver...\e[0m\n'

sudo apt update

sudo apt install -y dkms git

sudo git clone 'https://github.com/RinCat/RTL88x2BU-Linux-Driver.git' /usr/src/rtl88x2bu-git

sudo sed -i 's/PACKAGE_VERSION="@PKGVER@"/PACKAGE_VERSION="git"/g' /usr/src/rtl88x2bu-git/dkms.conf

sudo dkms add -m rtl88x2bu -v git

sudo dkms autoinstall

echo -e '\n\e[1;32m// RTL88x2BU driver installed...\e[0m\n\n\e[1;31m// Rebooting system in 10 seconds...\e[0m\n'

sleep 10s

sudo reboot
