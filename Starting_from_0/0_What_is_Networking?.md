#### What is Networking?

- Latency - the time taken for data/packet/message to transfer
- Local Area Network (LAN) - a group of connected devices
- Ethernet cables - used to connect devices and send data over
- Media Access Control (MAC) Address - unique serial assigned to each device
- MAC addresses are used to ensure the right machine receives its message
- Data sent over a network has the MAC address in the "header" of the message
- Carrier Sense Multiple Access (CMSA)
- Bandwidth - the rate that data can be sent
- Exponential Backoff - the amount of time a device will wait after a network collision before retrying its send
- Switch - used to separate and link machines across a network
- Keeps a list of all devices MAC addresses to send to only the correct machine/network
- Routers send data between and across networks
- Hop count - the amount of hops (steps) a message takes across a network
- Packets - large messages are broken up into smaller packets to be sent
- Every device on a network has its own individual IP address

#### IP Addresses
- IP stands for internet Protocol
- There are two versions of IP - Version 4 and Version 6
- An IP address is a unique ID that each device on a network is given
- The IP address allows data and traffic to be sent to specific computers over a network
- IPv4 addresses are four sets of numbers separated by a full stop - 192.168.70.23
- IPv6 addresses use numbers and letters separated by single or double colons - ‘2001:0db8:85a3:0000:0000:8a2e:0370:7334’
- There can be Dynamic or Static IP addresses assigned to devices
- A Dynamic IP is an IP that is temporarily assigned to a device from a shared pool of IP addresses
- A static IP is an address set to always be linked to one specific device

#### DNS - Domain Name System
- DNS translates human readable website addresses "www.gaming.co.uk" into machine readable IP addresses - 124.234.768.987
- There are four different servers involved in a DNS lookup process -
    - __DNS recursor__ - receives the first request from a users machine or browser and begins the request chain to get the IP address
    - __Root nameserver__ - is the starting point to reference other servers for specific IP addresses
    - __TLD Namesever__ - A top level domain server that hosts the end port of the web address - .co.uk, .com, .org etc
    - __Authoritative nameserver__ - the final point where the actual IP address is held and can be sent back to the users machine
- DNS requests can be cached so requests can be found quicker
    - Browsers can cache DNS requests
    - The Operating system can also cache DNS requests