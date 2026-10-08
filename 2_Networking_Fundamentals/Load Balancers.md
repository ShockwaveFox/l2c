#### Load Balancers
- A load balancer distributes traffic across a group of servers
- This ensures that no one server takes all the traffic and becomes overwhelmed and goes down

#### Traffic Load Distribution
- Round Robin - this distributes traffic sequentially across all servers
    - E.g. - User 1 goes to server 1, user 2 goes to server 2, user 3 goes to server 3 etc
- Smart Load Balancing - the servers continually communicate with the load balancer letting it know what level of load they are under
    - If a server is lower load than others then more traffic will be routed to that server
    - Requires more configuration to set up
- Random Selection - the load balancer will send traffic randomly to each server
    - E.g. - it will send users 1 & 2 to server 1, users 3-6 to server 2, users 7 & 8 to server 3 etc