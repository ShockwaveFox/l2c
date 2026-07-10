#### Routing

#### What is routing
- Routing is sending data across the internet from source to destination
- A router will choose the best route for the data to get to where it needs to go
- The data will have a source and destination IP address assigned to it
    - This is to send it to the right place as well as showing where it is from for any replies
- Each router will have a routing table containing IP addresses
- This is so it can find the right IP address to send the data on to

#### Routing protocols
- There are 2 types of routing - static and dynamic
- Static - manually configuring a router to send over specific paths
    - Used in small networks and where security is a concern

- Dynamic - routers use alogorithms to speak to each other and stay up to date on changes to the network

- Autonomous system - a collection of networks that are owned by a specific group
    - E.g. - a company, internet service provider or government
    - a network of routers that all use the same policies and routing logic

- Interior and Border Routers
    - an interior router is only used to send data internally its own autonomous system or subnet
    - border routers connect connect different autonomous systems and are used to send data externally

- Interior Gateway Protocol (IGP) -  used internally in an autonomous system 
    - E.g. a company internal network

- Exterior gateway Protocol (EGP)  - used to externally connect different autonomous systems
    - E.g. 2 different networks comunicating over the internet
    

#### Interior Gateway Protocols
- Distance vector (RIP & IGRP) - decides the best route across a network based on distance counted in hops
    - RIP V1 & V2 - Routing Information Protocol
    - IGRP - Interior Gateway Routing Protocol
    - Has a routing table of the distance between all other routers on the network 
    - distance between routers is counted in hops (steps)
    - Routers can only speak to their direct neighbours

- Link state (OSPF & IS-IS) - every router has a full view of all other routers, changes and updates across the whole network topology
    - IS-IS - Intermediate System to Intermediate System
        - used in large enterprose networks
        - supports IPV4 & IPV6
    - OSPF - open shortest path first
        - determines the best paths across a network
        - every router has a full view of the whole network layout

- Hybrid (EIGRP) - a mix of distance vector and link state protocols
    - EIGRP - Enhanced Interior Gateway Routing Protocol
    - uses the distance calculations from distance vector also has a view of the whole network to find the quickest route across the network

#### Exterior Gateway Protocols
- Path vector (BGP) - protocol used to route data between external autonmous systems across the internet
    - Border Gateway Protocol - used by border routers
    - each router has a routing table with information about each router it can connect to
    - chooses the fastest path between autonomous systems
    - can be used in an internal network (IGBP) - internal border gateway protocol