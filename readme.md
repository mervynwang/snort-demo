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
- run snort via `snort -c /etc/snort/snort_ips.conf -A console -v -C -k none`  in inline mode alias svi 

# red host

- start probing the blue host and see what happens
- things to try:
  - alias a1 `nmap -sV blue` version detection scan
  - alias a2 `ping -c1 blue` send single ping probe
  - alias a3 `curl -i -L http://blue/pm.php` 
  - alias a4 `curl -i -L http://blue -X POST` 
  - alias a5 `hydra -l root -P /500-worst-passwords.txt blue mysql` 


# recommended talks

- [Martin Roesch | From The Garage To NASDAQ With Open Source The Sourcefire Experience](https://www.youtube.com/watch?v=nfHyN4O9VyY)
- [Origin Code](https://github.com/bmedicke/snort-demo)
- [Origin Code](https://github.com/citizen-stig/dockerdvwa)