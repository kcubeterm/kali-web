FROM kalilinux/kali:latest
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openssh-server

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y xfce4
RUN apt-get install -y fakechroot
RUN apt-get install -y --no-install-recommends build-essential cmake git libjson-c-dev libwebsockets-dev
RUN apt-get install -y npm
RUN apt-get install -y rsync
RUN apt-get install -y sudo
RUN apt-get install -y fakeroot
RUN apt-get install -y neofetch
RUN apt-get install -y apt-utils
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y tigervnc-standalone-server
RUN npm install -g heroku
COPY root.sh /usr/local/bin/root.sh
COPY .bashrc $HOME/.bashrc
RUN apt-get install -y wget 
RUN apt-get install -y curl
RUN dpkg --configure udev
RUN dpkg --configure -a
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 /usr/local/bin/ttyd
RUN chmod +x /usr/local/bin/ttyd

