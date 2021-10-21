## Configure sudoers1
rm -r /etc/sudoers
cp /public-scrips/sudoers1 /etc/sudoers
chmod 440 /etc/sudoers
useradd -m -G wheel -s /bin/bash gaazhag
echo gaazhag:nosferatu | chpasswd
