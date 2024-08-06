#The base image
FROM fedora:40

#Install applications
RUN dnf -y install @core @firefox @fonts @multimedia gnome-themes-extra

COPY ./wsl.conf /etc/wsl.conf
COPY ./x11.conf /usr/lib/tmpfiles.d/
COPY ./firstboot.sh /root/firstboot.sh

RUN echo '/root/firstboot.sh' >> /root/.bashrc