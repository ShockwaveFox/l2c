#### Domain Name System

- DNS resolves a fully qualified domain name (FQDN) to an IP address
    - E.g. FQDN = www.google.co.uk - to IP - 8.8.8.8

#### Recursive and Iterative
- A recursive DNS query is between a DNS client and its local DNS server
    - it demands a name resolution
    - a local DNS server is responsible for answering queries from DNS clients
- Iterative DNS queries are between local DNS server and other DNS servers
    - Does not demand a name resolution
    - The local DNS Server will ask other DNS servers to provide a resolution or referral to resolve an IP

#### Name Resolution Process
- An FQDN is typed into the web browser
- The browser checks 2 places for any previous resolution records
    - the machines cache memory
    - a hosts text file
- If no records are found in these 2 places the browser asks the local DNS server
    - this is a __recursive query__ and demands a clear answer

- If the local DNS server has no answer the __iterative query__ process starts
- the local DNS server will ask other servers if they know the IP address
    - it queries the root domain server first
        - root domains are only responsible top level domain servers - .com, .eu, .org etc
    - next it queries the .com domain server
        - domain servers are responsible for websites ending in - .com, .eu, .org etc
    - the .com domain server will send the local DNS server to a Google DNS server
        - the Google DNS server will send the IP address for a google.com webserver
    - the local DNS server sends the IP address back to the requesting machine

- Once the IP address has been sent back to the requesting machine it will store the IP in its cache memory
- The local DNS server will aslo save the IP for any other future requests