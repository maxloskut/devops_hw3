date >> /var/log/sysinfo.log

w  >> /var/log/sysinfo.log

free -m >> /var/log/sysinfo.log

df -h >> /var/log/sysinfo.log

ss -tulpn >> /var/log/sysinfo.log

ping -c2 ukr.net >> /var/log/sysinfo.log

find / \( -perm -4000 -o -perm -2000 \) -type f -exec ls -la {} \; >> /var/log/sysinfo.log