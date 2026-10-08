#### Commands to view active connections
- These are linux based commands
- They show which network services are listening on the machine
    - It also shows port numbers and the owning processes

#### Primary
- ss -lntup - 
    - ss - socket statistics - the command to see services listening on the network
        - l - shows the listening sockets
        - n - shows the port numbers
        - t - shows TCP
        - u - shows UDP
        - p - shows the process ID (PID)
- sudo ss -lntup - runs under sudo (super-user) elevated level access

#### Optional (process-oriented view)
- lsof -i -P -n | grep LISTEN
    - lsof - list open files - shows all open network sockets on the system
        - i -
        - P -
        - n - 
        - grep LISTEN - searches the output for any lines that contain LISTEn
- sudo lsof -i -P -n | grep LISTEN - runs under sudo (super-user) elevated level access

#### Fallback (older systems)
- netstat -tulpn
    - netstat - used to inspect statistics on the network, services on ports and inspecting connections
        - t - shows TCP
        - u - shows UDP
        - l - shows the listening sockets
        - p - shows the process ID (PID)
        - n - shows the port numbers
- sudo netstat -tulpn - runs under sudo (super-user) elevated level access