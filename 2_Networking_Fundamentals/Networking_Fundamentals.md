#### Client - Server model
- client server model
    - clients are devices - laptop, computer, mobile
    - clients make requests to a server for some type of data or files
    - server receives the request and responds back to the client with the data

#### OSI Model
- There are 7 layers in the OSI model
- data will move up or down through all the layers

- Application - the software applications used by users
- Presentation - translates human readable data to machine readable data
- Session - sets up and manages connections for sending and receiving data
- Transport - defines how the data will be sent
- Network - assigns source and destination IP adress to the data
- Data link - adds MAC addresses to the data
- Physical - uses physical wires to send the data

#### TCP/IP Model
- Only 5 layers vs OSI models 7 layers
- Application, Presentation and session layers are combined

- Application - the software applications used by users
- Transport - defines how the data will be sent
- Network - assigns source and destination IP adress to the data
- Data link - adds MAC addresses to the data
- Physical - uses physical wires to send the data

#### Application Layer
- Main layer where users interact with the application on devices
    - Phone, laptop, tablet etc
- Applications users interact with are browsers, Whatsapp etc
- Is the start of the client > Server relationship
- Peer to peer communication (P2P) - all connected devices can be clients and servers
    - E.g., used in torrenting
- Protocols are used between devices to determine how they will communicate with each other

#### Web Protocols ***ADD PORT NUMBERS***
    - HTTP/HTTPS - hyper text transfer protocol/hyper text transfer protocol secure
    - DHCP - Dynamic Host Control Protocol
    - FTP - File transfer Protocol
    - SMTP - Simple Mail Transfer Protocol
    - POP3/IMAC - 
    - SSH - Secure Shell
    - VNC - 
    - Telnet port (23)
    - TCP/IP - Transmission Control Protocol/Internet Protocol
    - UDP - User Datagram Protocol

#### Programs, Processes & Threads
- Program - an application that a user or another application uses
- Process - something the program does - take a picture, place an order
- Thread - one single job that runs to support a process
    - E.g. - process is take a picture, one thread can be open camera, another can be focus camera, another can be close shutter
    - Multi-threaded processes - multiple threads running jobs simulataneoulsy to speed up the process

#### IP Addresses, Sockets & Ports
- Socket - is an interface between the process and the internet
- Ports - specify which application is being communicated with
    - some port numbers are set to specific applications and only used by those applications
    - ephemeral ports - are random port numbers that can be used for a time before being released to be reused

#### HTTP/HTTPS
- A client server protocol at the application layer
- Specifies how a client requests data from a server and how the server responds back
- Client > Sends HTTP requests >> Server > sends HTTP responses
- Uses TCP (transport layer)
- Is a stateless protocol - does not store any information on the client
- HTTP is open and unencrypted - HTTPS is secure and is encrypted
- Each request contains __Request Headers__
    - Contains what the client sent to the server
    - Includes language to be used, encoding accepted, what type of data the client will accept
- Each response contains __Response Headers__
    - Contains what the server sent back
- There are multiple methods used by HTTP
    - GET - request to get data from a server
    - POST - posting data to a server - sending data in a form
    - PUT - puts data to a spcecific location
    - DELETE - deletes data from the server

#### Status Codes
- Shows information on if a request was successful, failed or something else happened
- Status codes are split into classes -
    - 1xx - informational
    - 2xx - request was successful
    - 3xx - request was redirected
    - 4xx - error happened at the client end
    - 5xx - error happened at the server end

#### Cookies
- Are unique strings of characters
- Cookies are stored on a clients browser 
- A cookie is set on the browser by the application/website the first time the application or website is visited
- The cookie is sent in the request header everytime a new request is sent to the server
- The server tracks the browser/client through the cookie data stored on the browser
- This allows an application to keep the state of the site the same as the last time the client visited it
- Cookies have an expiration date set in the response header
- Cookies can be used to track clients by websites and applications
- 3rd party cookies - cookies set by other websites than the one you are visiting - adverts

#### Email
- Application layer protocols for email -
    - SMTP - Simple Mail transfer Protocol - for sending emails
    - POP3 - for receiving emails
- Transport layer protocols for email
    - TCP - used for ensuring all the data is sent correctly

#### SMTP - sending emails
- Email is sent from the device to the senders SMTP server
- The senders SMTP server will connect to the receivers SMTP server to transfer the email
- Commands to find SMTP servers -
    - nslookup -type=mx gmail.com
    - nslookup - 
    - type - specifies the type of server to lookup - mx = mail exchange (SMTP servers)
    - gmail.com - the SMTP servers for gmail

#### POP3 - receiving emails
- Post Office Protocol 
- Client will connect to the POP server (port 110)
- Authentication and authorisation will happen between client and server
- Emails will be downloaded from the server to the client

#### IMAP
- Internet Message Access Protocol
- Allows access to emails on multiple devices
- Emails can be sent and deleted from different devices and will update across all devices

#### DNS
- Domain Name System
- Used to change human written website addresses to computer IP addresses

#### Transport Layer
- Transports (receives and sends) data to and from the network layer to the correct application on a device
- Multi-plexing and de-multiplexing happens at Transport layer
- Multi-plex - packs multiple individual messages being sent to different applications on one device into one big message
- De-Multi-plex - unpacks the one big message into the individual messages to send to each application on one device
- The data sent in segments will have socket port numbers specifying the application the data came from and the application the data is going to

- Congestion - traffic on the network - happens at transport and network layers
    - If a network has lower bandidth but data is still being sent quickly segments can be lost
- Congestion control - tries to send segments at slower speeds
    - Uses Congestion control algorithms built into TCP protocol

- Checksum - a string value calculated when data is sent - is checked again when data reaches the receiver to ensure it has not been changed or corrupted during send
    - Checksum value should match at sender and receivers end

- Timers - a timer starts when each data packet is sent and ends when receiver sends a confirmation message that the data reached the destination
    - If the timer expires and no confirmation message is received the data is treated as not sent successfully
- Retransmission timer - if the timer expires or no confirmation message is received the data is resent

- Sequence numbers - each packet is sent with a sequence number - the order that they were sent - 1,2,3 etc
    - Helps keep the data segments in order and shows any duplicates that were sent in case of retransmission timers

#### Transport Layer Protocols
- UDP - User Datagram Protocol
    - Is very fast
    - Data sent over UDP can sometimes not be delivered
    - Data can sometimes change during send
    - Data may not be sent in order

- Is a connectionless protocol - no connection is established between the devices
- Uses Checksums so data can be checked for changes or corruption but UDP will not resend any data

- UDP segments have a source and destination port number attached to them
    - datagram length and checksum are added to the packet
    - each packet contains an 8 bytes header
    - the data section contains 65,536 bytes

- DNS, online gaming and video conferencing use UDP

- TCP - Transmission Control Protocol
- Sorts the raw data from the application layer into segments/chunks
    - it adds headers and checksums to each segment of data
    - congestion control is also added
    - maintains the data to keep it in order using sequence numbers
    - can resend data with the retransmission timer

- is a connection oriented protocol
    - a connection has to be established between devices before data can be sent
    - supports full duplex - messages can be sent to each connected device at the same time
    - can only connect two computers to communicate at one time

#### 3 Way Handshake
- The process two devices go through to establish a TCP connection

- Step 1 - client sends a synchronisation (SYN) flag to a server
    - assigns a random sequence number
- Step 2 - server will reply with a synchronisation (SYN) flag an acknowledge (ACK) flag
    - assigns a random sequence number
    - ACK number will be sent as well - this is sequence number plus 1
- Step 3 - client will then send another ACK flag back to the server
     - assigns a random sequence number
    - ACK number will be sent as well - this is sequence number plus 1

#### Network Layer
- Receives segments from the Transport layer and wraps them in Packets
- Sends data across networks using routers
- Routers are connected to each other all over the world
- Every router will have its own specific network address 
    - 