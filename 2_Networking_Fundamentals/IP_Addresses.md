#### What is an IP Address?

- Are used at the Network Layer 
- Is a unique numeric ID given to every device on a network
    - E.g. - 192.168.32.152 - an IPV4 address
    - Are 32 bits in size
    - each set of numbers is an octet (192).(168).(32).(152) which is 8 bytes
- Is a unique address so network traffic can be sent to the right machine
- An IPs network section is like a street address, the host is the house number

- A subnet mask specifies the network vs host part of an IP address
    - the parts of a subnet that are 255 show the network part of the IP
    - E.g. - |192.168.32.  |152
             |255.255..255.|0
             |Network      | Host

- There are 3 classes of IP addresses -
    - Class A - 1.0.0.0 - 126.255.255.255
        - Subnet - 255.0.0.0
        - Hosts - 16,777,214
        - Private IP addresses - 10.0.0.0 - 10.255.255.255
   
    - Class B - 128.0.0.0 - 191.255.255.255
        - Subnet - 255.255.0.0
        - Hosts - 65,534
        - Private IP addresses - 172.16.0.0 - 172.31.255.255
    
    - Class C - 192.0.0.0 - 223.255.255.255
        - Subnet - 255.255.255.0
        - Hosts - 254
        - Private IP addresses - 192.168.0.0 - 192.168.255.255

- Private IPs cannot be used over the internet - only public IPs which are unique
- Private IPs can be used over and over again inside an internal network
- Network Address Translation (NAT) - how internal private IP addresses are able to communicate over the internet
    - A public IP is given from the internet provider to the router 
    - The router swaps the internal private IP for its public IP to allow communication over the internet.