#### Protocols - TCP vs UDP

#### TCP - Transmission Control Protocol
- TCP is a connection oriented protocol
    - a connection has to be established between devices before data can be sent
    - supports full duplex - messages can be sent to each connected device at the same time
    - can only connect two computers to communicate at one time
    - ensures all data is sent - can resend any missing data

#### 3 Way Handshake
- The process two devices go through to establish a TCP connection -

- Step 1 - client sends a synchronisation (SYN) flag to a server
    - assigns a random sequence number
- Step 2 - server will reply with a synchronisation (SYN) flag and acknowledge (ACK) flag (SYN ACK)
    - assigns a random sequence number
    - ACK number will be sent as well - this is sequence number plus 1
- Step 3 - client will then send another ACK flag back to the server
     - assigns a random sequence number
    - ACK number will be sent as well - this is sequence number plus 1

#### UDP - User Datagram Protocol
- Is very fast compared to TCP
- Sends data in a "fire and forget" style
- Does not check for or resend any lost or missing data    
- Is a connectionless protocol - no connection is established between the devices

#### Ports
- A port is where network connections strart and end
- They are managed by a computers operating system
- A port will be linked to a specific service or application
- This allows traffic to be sent to the correct location

- Ports are used at the Transport Layer (Layer 4)
    - Only TCP or UDP can set a port number
    - Layer 3 (Network) only uses the IP address and cannot set a port number

- Most ports are usually blocked by firewall rules to stop malicious attacks exploiting them
    - Some ports will be left open so employees can use the internet or emails

#### Port Numbers
- Port 20 & 21 - File transfer Protocol (FTP)
- Port 22 - SSH (SFTP)
- Port 23 - Telnet
- Port 25 - Simple Mail Transfer Protocol (SMTP)
- Port 53 - Domain Name Service (DNS)
- Port 80 - Hypertext Transfer Protocol (HTTP)
- Port 110 - Post Office Protocol, version 3 (POP3) 
- Port 443 - Hypertext Transfer Protocol Secure (HTTPS) 
- Port 465 - Authenticated SMTP over TLS/SSL (SMTPS)