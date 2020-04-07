# requirements

- [Docker](https://www.docker.com/community-edition#/download)
- [Docker Compose](https://docs.docker.com/compose/install/)

# getting started

- install docker on your host machine
- clone this repo `git pull https://github.com/bmedicke/snort-demo.git && cd snort-demo`
- build the containers: `docker-compose build`
- start the containers: `docker-compose up`
- source the aliases on the host for easier management: `source alias`
- use the `red` and `blue` aliases to connect to the respective host

# blue host

- edit `snort.conf` to your hearts content (skip to end of files for demo rules)
  - _note_: you can do this outside of the container
- run snort via `snort -c /etc/snort/snort.conf -A console` or the `s` alias
- for the SSH dictionary attack:
  - change your root password with `passwd`
  - start the ssh server in a new tmux pane `/usr/sbin/sshd -D`

# red host

- start probing the blue host and see what happens
- things to try:
  - `ping -c1 blue` send single ping probe
  - `nmap -sV blue` version detection scan
  - `hydra -l root -P 500-worst-passwords.txt blue ssh` ssh dictionary attack

# recommended talks

- [Martin Roesch | From The Garage To NASDAQ With Open Source The Sourcefire Experience](https://www.youtube.com/watch?v=nfHyN4O9VyY)
- [Origin Code](https://github.com/bmedicke/snort-demo)