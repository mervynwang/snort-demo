alias ll="ls -al"
alias s="snort -c /etc/snort/snort.conf"
alias sa="snort -c /etc/snort/snort.conf -A console" 
alias sav="snort -c /etc/snort/snort.conf -A console -v" 
alias sai="sa -d -e --enable-inline-test"

alias n="nmap -sV blue" # Version detection, SNMPv3 GET
alias n80="nmap -sV blue -p 80"
alias w="wpscan --url http://blue"
alias h="hydra -l root -P 500-worst-passwords.txt blue ssh"
alias v="vi /etc/snort/rules/snmp.rules"
alias v2="vi /etc/snort/rules/web-client.rules"
alias p="ping -c1 blue"
alias c="curl -i -L \"http://blue/pm.php?sub=newpm&uid=<script>alert()</script>\""
alias ci="curl -i -L \"http://blue\""

alias c2="curl -i -L \"http://blue2/pm.php?sub=newpm&uid=<script>alert()</script>\""
alias n2="nmap -sV blue2" # Version detection, SNMPv3 GET
alias n2-80="nmap -sV blue -p 80"
alias p2="ping -c1 blue2"

alias ng="/etc/init.d/nginx start"