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

- Autonomous system - a collection of routers that are in a specific location

- Interior Gateway Protocol (IGP) -  used within an autonomous system 
    - E.g. a company internal network

- Exterior gateway Protocol (EGP)  - used between different autonomous system 
    - E.g. 2 different company networks comunicating with each other over the internet

#### Interior Gateway Protocols
- Distance vector (RIP & IGRP) - decides the best route based on distance counted in hopd
    - RIP - Routing Information Protocol
    - IGRP - Interior Gateway Routing Protocol
    - Has a routing table including the distance to all other routers on the network counted in hops
    - Routers can only speak to their direct neighbours

- Link state (OSPF & IS-IS) - the starting router will know all other routers on the path and will choose the quickest route to take
    - OSPF - open shortest path first
    - IS-IS - Intermediate System to Intermediate System

- Hybrid (EIGRP) - a mix of distance vector and link state
    - EIGRP - Enhanced Interior Gateway Routing Protocol
    - knows all the routers involved and best route to take

#### Exterior Gateway Protocols
- Path vector (BGP) - needs the whole path to the destination and then works out how to get there
    - Border Gateway Protocol 