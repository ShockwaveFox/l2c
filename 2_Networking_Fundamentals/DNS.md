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

- dig - DNS lookup utility
    - shows the DNS servers used to find a websites IP address

- dig google.co.uk
    - Shows a question section - what was asked (DNS servers that will have the IP for google.co.uk)
        - IN - Internet Class
        - A - A record (IPV4 address)
    - Answer section - gives the IP address (142.251.29.94)
        - 300 - Time to Live (TTL) how long the servers cache this answer for in seconds
    - Authority section - shows the nameservers (NS) that are asked for and give the google.co.uk IP address
    - Additional section - shows the name servers that hold the Ip addresses for IPV4 (A) and IPV6 (AAAA)

```
; <<>> DiG 9.10.6 <<>> google.co.uk
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 30545
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 4, ADDITIONAL: 9

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
;; QUESTION SECTION:
;google.co.uk.			IN	A

;; ANSWER SECTION:
google.co.uk.		300	IN	A	142.251.29.94

;; AUTHORITY SECTION:
google.co.uk.		79709	IN	NS	ns2.google.com.
google.co.uk.		79709	IN	NS	ns3.google.com.
google.co.uk.		79709	IN	NS	ns1.google.com.
google.co.uk.		79709	IN	NS	ns4.google.com.

;; ADDITIONAL SECTION:
ns1.google.com.		33869	IN	A	216.239.32.10
ns3.google.com.		33869	IN	A	216.239.36.10
ns2.google.com.		33869	IN	A	216.239.34.10
ns4.google.com.		33869	IN	A	216.239.38.10
ns1.google.com.		33869	IN	AAAA	2001:4860:4802:32::a
ns3.google.com.		33869	IN	AAAA	2001:4860:4802:36::a
ns2.google.com.		33869	IN	AAAA	2001:4860:4802:34::a
ns4.google.com.		33869	IN	AAAA	2001:4860:4802:38::a
```

- dig +trace google.co.uk - traces the whole DNS request process across all servers to find the IP address for google.co.uk

- nslookup - a simpler version of dig for looking up IP adresses
    - without any flags defaults to showing A records only
    - flags can be added to search for different types of servers
        - nslookup reddit.com - shows the IPv4 address (A record) for reddit.com
        - nslookup -type=AAAA reddit.com - shows the IPv6 address
        - nslookup -type=NS reddit.com - shows the authoritative nameservers
        - nslookup -type=MX reddit.com - shows the mail servers for reddit.com