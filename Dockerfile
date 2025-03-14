#The base image
FROM fedora:41

#Install applications
RUN dnf -y install @core @firefox @fonts @multimedia gnome-themes-extra git

COPY ./wsl.conf /etc/wsl.conf
COPY ./wslg-mounts.service /etc/systemd/user/wslg-mounts.service
COPY ./firstboot.sh /root/firstboot.sh

RUN echo '/root/firstboot.sh' >> /root/.bashrc
RUN chmod +x /root/firstboot.sh