#### Network Address Translation

- NAT translates one IP address into another
    - E.g. - a router translates an internal private IP address into a public IP address for outgoing traffic
    - it will also translate an incoming public IP into an internal private IP address for incoming traffic
- internal IP addresses are hidden with NAT which improves security of the devices in a network

#### 4 types of NAT
- Static NAT (SNAT) - one public IP address is mapped to one private IP adress
    - the private and public IP addresses never change

- Dynamic NAT (DNAT) - public IP addresses are assigned from a routers available pool of public IP addresses

- Port Address Translation (PAT) - internal private IPs are swapped for the routers public IP address and each assigned a unique, specific port number to identify them

- Port Forwarding - all incoming traffic will be directed to the correct host based on its port number from the public IP address
     - E.g. - a web server = port 80, FTP server = port 21, mail server = port 25