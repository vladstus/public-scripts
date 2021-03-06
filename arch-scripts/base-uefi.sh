#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >>/etc/locale.conf
#echo "KEYMAP=de_CH-latin1" >> /etc/vconsole.conf
echo "gaazhag" >>/etc/hostname
{
  echo "127.0.0.1 localhost"
  echo "::1       localhost"
  echo "127.0.1.1 gaazhag.localdomain gaazhag"
} >>/etc/hosts
echo root:nosferatu | chpasswd
### Install Grub
pacman -S grub efibootmgr dhcpcd dhclient networkmanager

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

### Configure sudoers
rm -r /etc/sudoers
cd /public-scripts/ || exit
cp sudoers1 /etc/sudoers
chmod 440 /etc/sudoers
useradd -m -G wheel -s /bin/bash gaazhag
echo gaazhag:nosferatu | chpasswd

### Install drivers
pacman -Syu nvidia-dkms nvidia-utils nvidia-settings opencl-nvidia libxnvctrl

### Install other stuff
pacman -S network-manager-applet dialog wpa_supplicant mtools reflectorbase-devel avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pulseaudio pavucontrol bash-completion openssh rsync reflector acpi acpi_call virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font


### Enable services
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
# systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
systemctl enable fstrim.timer
#systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid


#usermod -aG libvirt gaazhag

printf "\e[1;32mDone! Type exit, umount -R /mnt and reboot.\e[0m"
