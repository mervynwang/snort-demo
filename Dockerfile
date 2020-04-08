FROM kalilinux/kali
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -q -y snort tmux ranger tree \
                       nmap openssh-server vim tcpdump \
                       hydra man nginx inetutils-ping \
                       wpscan telnet
RUN wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/500-worst-passwords.txt                       
RUN mkdir -p /var/run/sshd
