#The base image
FROM fedora:39

ARG USER
ARG PASSWORD

#Install required applications
RUN dnf -y install @core @firefox @fonts @multimedia neovim zsh tmux

#Add current user to environment 
RUN /bin/bash -c 'useradd -m -s /bin/zsh ${USER}; echo "${USER}:${PASSWORD}" | chpasswd; usermod -aG wheel ${USER}'

# Add wsl conf, edit to set default user
COPY ./wsl.conf /etc/wsl.conf
RUN /bin/bash -c 'printf "\n[user]\ndefault=${USER}" >> /etc/wsl.conf;'
