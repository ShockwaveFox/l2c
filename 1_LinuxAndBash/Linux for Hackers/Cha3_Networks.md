#### Analysing and Managing Networks

#### Ifconfig
- ifconfig - shows information about network devices active on the system
    - shows info such as mac address, IP address, loopback and broadcast address
- iwconfig - shows information about wireless network devices
    - can show wireless standards available, strength of signal and wireless mode
- ifconfig can change and assign new IPs to devices
    - E.G. - ifconfig eth0 192.123.456.89
        - eth0 is the network interface
    - ifconfig can also change subnet mask (netmask) and broadcast address
        - E.g. - ifconfig eth0 192.123.456.89 netmask 255.255.255.0 broadcast 123.987.456.76
    - ifconfog can change (spoof) your devices MAC address too
        - E.g. - 
            - ifconfig eth0 down - down turns the eth0 interface off
            - ifconfig eth0 hw ether 00:11:22:33:44:55 - hw specifies hardware, ether specifies ethernet and the new MAC address
            - ifconfig eth0 up - up brings the interface back up with the new address

#### DHCP
- DHCP automatically assigns devices on a network an IP address
- You can request a new address by running dhclient with the interface to update
    - E.g. - dhclient eth0

#### DNS
- dig - dig can pull information about a websites DNS details
    - E.g. - dig "websitename.com"
    - ns - short for nameserver - can add to dig command
    - mx - short for mail exchange server - shows information about email servers attached to a website
- you can change the DNS server you use on your machine
- this is kept in a file located in etc named resolv.conf - /etc/resolv.conf
- it can be edited in a text file or terminal editor to add a new nameserver to be used
    - E.g. echo "nameserver 8.8.8.8" >> /etc/resolv.conf 
        - >> appends to the file

#### Hosts file
- hosts file contains IP addresses used by the system for domain name mapping
- you can add IP addresses mapped to any domain to redirect the traffic where you want it to go
    - E.g. - the wesbite google.com can be set to be redirected to a different IP than googles actual IP

Exercises
1. [] Find info on your active network interfaces
2. [] Change the IP address on eth0 to 192.168.1.1
3. [] Chage the hardware address on eth0
4. [] Check your wireless active interfaces
5. [] Reset the IP address to a DHCP assigned one
6. [] Find your favourite webservers nameserver and mailserver
8. [] Add Googles DNS server to your /etc/resolv.conf file