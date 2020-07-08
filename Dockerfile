FROM kalilinux/kali:latest
RUN apt-get update && apt-get upgrade -y
#RUN apt-get install -y openssh-server

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y xfce4
RUN apt-get install -y fakechroot
RUN apt-get install -y --no-install-recommends build-essential cmake git libjson-c-dev libwebsockets-dev
RUN apt-get install -y npm
RUN apt-get install -y rsync
RUN apt-get install -y sudo
RUN apt-get install -y fakeroot
#RUN apt-get install -y ttyd
#RUN apt-get install -y npm
RUN apt-get install -y apt-utils
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y tigervnc-standalone-server
#RUN apt-get install -y ubuntu-desktop tightvncserver
#RUN yes 31 | apt install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#RUN adduser --disabled-password --gecos '' r
#RUN adduser r sudo
#RUN echo '%u57385 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN apt-get clean && apt-get autoclean && apt-get autoremove -y
RUN mkdir /home/kcubeterm
#RUN mkdir /home/rahil1
#RUN mkdir /home/kcubeterm/home
#RUN unminimize
#RUN mkdir /root/.ssh
#RUN mkdir /root/app
#COPY authorized_keys /root/.ssh/authorized_keys
#COPY installer.sh /root/installer.sh
COPY root.sh /usr/local/bin/root.sh
RUN apt-get install -y wget 
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 /usr/local/bin/ttyd
RUN chmod +x /usr/local/bin/ttyd
#RUN bash /root/installer.sh
#RUN echo -e "kk\nkk" | passwd
#COPY sshd_config /root/.ssh/sshd_config
#COPY app.js /root/app/app.js
#COPY package.json /root/app/package.json

