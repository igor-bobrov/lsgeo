# Установка gentoo minimal cd
cd ~/
wget --continue https://distfiles.gentoo.org/releases/amd64/autobuilds/20240825T170406Z/install-amd64-minimal-20240825T170406Z.iso

clear

echo "made by sakari"
chmod +x ~/lsgeo/SH/NameOS.sh
~/lsgeo/SH/NameOS.she

echo "Read devices:"
ls -a /dev/sd?
echo "Is this correct(we need /dev/sda)? You have 10 seconds to stop procces"

sleep 7
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1

umount /dev/sda

sudo wipefs --all /dev/sda
sudo dd if=~/install-amd64-minimal-20240825T170406Z.iso of=/dev/sda bs=4M oflag=direct status=progress && sync
