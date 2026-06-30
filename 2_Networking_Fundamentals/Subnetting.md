#### Subnetting

- A subnet is a division of an IP network
- Dividing a network into 2 or more networks is subnetting

- Subnetting helps improve performance and reduce congestion across a network

- Subnet table

| Subnet        | 1   | 2   | 4   | 8   | 16  | 32  | 64  | 128 | 256 |
|---------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Hosts         | 256 | 128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |
| Subnet Mask   | /24 | /25 | /26 | /27 | /28 | /29 | /30 | /31 | /32 |

- Subnet - shows the number of hosts and subnet mask per subnet in a network
- Hosts - show the total number of hosts available on each subnet
- Subnet masks - shown in shorthand writing for displaying the network portion of each subnet

#### Example - 
- Network ID - 192.168.4.0/24
- Create 3 separate networks -
    - 3 subnets cannot be made, 4 has to be used with 1 spare subnet of hosts
    - this gives a total of 64 hosts on each subnet
    - the subnet mask for each network ID will be /26
- list each -
    - network ID
        - The network ID is the first IP address in each subnet host range
    - subnet mask
        - is /26 for 4 subnets each with 64 hosts
    - host ID range
        -   the host IDs range from .0 - .255 on network 192.168.4
    - number of usable hosts
        - each subnet has 62 usable hosts from a total of 64 - 2 IPs are reserved for the Network ID (first IP) and Broadcast ID (last IP)
    - broadcast ID
        - the broadcast ID is the very last IP in each subnet host range

| Network ID    | Subnet Mask | Host ID Range                 | No.of usable hosts | Broadcast ID  |
|---------------|-------------|-------------------------------|--------------------|---------------|
| 192.168.4.0   |   /26       | 192.168.4.1 - 192.168.4.62    |     62             | 192.168.4.63  |
| 192.168.4.64  |   /26       | 192.168.4.65 - 192.168.4.126  |     62             | 192.168.4.127 |
| 192.168.4.128 |   /26       | 192.168.4.129 - 192.168.4.190 |     62             | 192.168.4.191 |
| 192.168.4.192 |   /26       | 192.168.4.193 - 192.168.4.255 |     62             | 192.168.4.255 |