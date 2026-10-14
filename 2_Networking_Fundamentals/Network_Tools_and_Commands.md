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

#### Curl
- curl - sends a HTTP request to a URL
- Flags can be added for extra information
    - -d - send data/body
    - -H - send a header
    - -i - show response headers
    - -v - show detailed request + response information
    - -X - specifies the exact HTTP method (GET, POST, DELETE etc)

#### Dev Tools
- Used to check if page resources are fully downloaded or uploaded successfully
- Can inspect headers and other details on a webpage

- The network tab shows all items loaded, status codes, type of resource and other details
- To hide or show more columns right click the column headers
- Network speed can be "throttled" with different options to give a view of the page load speed on a mobile device

- Click an items name to see headers, a preview of the page, the response and the timing of the items loading

- The filter box can be used to search for specific file type
    - regexes are supported
    - using a - before a file type removes it from the results
    - searching for a specific domain can filter only on that domain 
        - E.g. - domain:github.com

- Elements can be blocked on a page using Request Blocking
    - E.g. - blocking all css elements will remove them from the page and change its layout
    - The page will need to be reloaded once a block has been added for it to be active