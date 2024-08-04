#!/bin/bash
set -e

read -p "Enter username: " user

while true; do
    read -sp "Enter password: " pass1
    echo
    read -sp "Re-enter password: " pass2
    echo

    if [ "$pass1" == "$pass2" ]; then
        pass="$pass1"
        break
    else
        echo "Passwords do not match. Please try again."
    fi
done

# Write default user to wslconf
printf "\n[user]\ndefault=${user}" >> /etc/wsl.conf;
useradd -m -s /bin/bash ${user}; echo "${user}:${pass}" | chpasswd; usermod -aG wheel ${user}

# stop exiting on error when breaking
set +x
# self delete
rm -- "$0"
# remove .bashrc entry
sed -i '/^echo "/root/firstboot.sh"$/d' /root/.bashrc

exec su - "$user"