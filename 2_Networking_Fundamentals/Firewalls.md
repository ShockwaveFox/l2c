#### Firewalls
- A firewall filters traffic coming into a private network from the internet
- It stops and blocks unauthorised traffic entering the network
- A firewall is used to block attackers and malicious traffic

### Firewall Rules
- Rules can be set up to allow or deny traffic
    - These are known as Access Control Lists (ACLs)

- Rules can be set to allow or deny traffic based on -
    - Ip address
    - Port numbers
    - Applications / programs
    - Protocols (TCP / UDP)
    - Domain names
    - Key words

#### Firewall Types
- Host based firewall - installed on a single computer
    - Will only protect that one device

- Network based firewall - combines software and hardware
    - Will protect the whole network
    - Rules are set on the firewall that apply across the network

- Firewalls can be a stand-alone device
- Routers can have built in firewalls
- They can also be deployed in a providers Cloud infrastructure

#### Stateless and Statefull Firewalls
- Stateless firewalls do not recognise the "state" of a connection between devices
    - This means that an outbound request and an inbound request are treated as 2 separate connections
    - The inbound AND outbound requests will both need separate rules set up for each
    - Inbound traffic can be BOTH a request and response and so can outbound traffic
    - More management and configuration is needed for setting rules

- A request will always be to a well known port (E.g. HTTPS TCP Port 443)
    - Outbound traffic will need rules created to allow traffic to well known ports

- A response from a server to a client will be to a random, ephemeral port chosen by the client
    - This means rules need to be set up to allow the full range of ephemeral ports (1024 - 65,535)
    - This leaves the server vulnerable and is not very secure

#### Stateful firewalls
- Stateful firewalls can recognise request and response traffic is related
- This means a request which is allowed out will automatically allow the response back in
- No rules need to be set up to allow all ephemeral ports allow access