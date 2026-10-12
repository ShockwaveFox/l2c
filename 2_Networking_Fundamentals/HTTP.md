#### How HTTP Works
- HTTP - Hyper Text Transfer Protocol
- HTTPS - Hyper Text Transfer Protocol Secure
    - Sent data is encrypted
    - Uses SSL (Secure Sockets Layer) or TLS (Transport Layer Security)
    - HTTPS should be the default version used for security
    - Certificates are installed on a host

- Used for communicating between web servers and clients
- Is a stateless protocol - all requests are individual requests
    - Nothing is remembered about previous requests

#### HTTP Methods
- GET - gets data from the server
- POST - send or submit data to the server
- PUT - Update data that is already on the server
- DELETE - delete data that is on the server

#### HTTP Headers
- Each HTTP request and response will have a Header and a Body
- The Response Body will have the HTML page and anything else sent from the server
- A Request Body will have the details sent in a form on a page
- There are General, Request and Response headers
    - General Headers include -
        - Request URL - the webpage URL address being requested
        - Request Method - GET, PUT, POST, DELETE
        - Status Code - the status of the request
        - Remote Address - IP address of the remote server
        - Referrer Policy - details if going from one page to another page
    - Response Headers include -
        - Server - type of server used by the website (Apache, Nginx) - usually hidden for security reasons
        - Set-Cookie - sends ccokies from server to client
        - Content-Type - type of content being sent - HTML, CSS, PNG/JPEG, JSON etc
        - Content-Length - in 8 bit bytes
        - Date - current date
     - Request Headers include -
        - Cookies - can send previously used cookie data back to server
        - Accept-xxx - accept encoding, character set, language etc the client can understand
        - - Content-Type - type of content being sent - HTML, CSS, PNG/JPEG, JSON etc
        - Content-Length - in 8 bit bytes
        - Authorisation - used to validate a user to access a protected page - a security token
        - User Agent - a long string with information about the system the user is using
        - Referrer - if the user has come from a link on a different site

#### HTTPP Status Codes
- There are 5 categories of status codes
    - 1xx -  Informational - the requests was received and is processing
    - 2xx - Success - the request was recevied successfully and accepted
        - 200 - OK - everything has worked fine
        - 201 - OK created - something was created successfully
    - 3xx - Redirect - request has been redirected to a new/different location
         - 301 - moved to a new URL - old URL has been redirected to a new version
         - 304 Not modified (Cached version) - if revisiting a page and nothing has changed and doesnt need a refresh to update
    - 4xx - Client error - The request is bad or does not contain the needed information
        - 400 - Bad Request - incorrect/bad data was sent to server and request cannot be completed
        - 401 - Unauthorised - the user is not allowed to access this page or service
        - 404 - Not found - a page or service that does not exist
    - 5xx - Server error - the server could not successfully complete the request
        - 500 - Internal server error - something is not working on the server side

#### Versions
- HTTP 1.1 has been the standard used for a long time
- HTTP/2 is a big revision with improvements
    - Able to send more data in responses
    -  Can do full multi-plexing
    - Is faster, more efficient and secure



