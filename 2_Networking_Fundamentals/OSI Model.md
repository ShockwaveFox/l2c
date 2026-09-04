#### Client - Server model
- client server model
    - clients are devices - laptop, computer, mobile
    - clients make requests to a server for some type of data or files
    - server receives the request and responds back to the client with the data

### OSI Model
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

#### IP Addresses, Sockets & Ports - 1.51
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

2:11