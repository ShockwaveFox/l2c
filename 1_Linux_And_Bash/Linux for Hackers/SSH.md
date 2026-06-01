#### What is SSH?
- SSH stands for Secure Shell Protocol
- Its a way to have a secure connection to devices over a network
- Is usually used to connect to remote devices over the internet
- Can be used to manage infrastructure, file transfers or remote server control
- Connections are encrypted over the network for security
- SSH runs on the TCP/IP protocol
- Encryption and authentication are built in using public and private key pairs
- Asymmetric encryption allows for symmetric encryption to occur over the connection
- Username and password should still be required to login to remote devices
- Port-forwarding or tunnelling can be used over SSH
- Port 22 is used for SSH connections
- This port is usually left open by firewalls
- Managing SSH keys is a big task as so many can be used across multiple applications

#### How to SSH with password
- In Windows terminal - 
    - E.g. ssh username@public-ip-address adam@201.127.212.217
    - enter password to connect
- In Linux terminal - 
    - E.g. ssh username@public-ip-address adam@201.127.212.217
    - enter password to connect

#### How to SSH with SSH Keys
- The private key file will need to be created and downloaded - this is a .pem file from your remote/virtual machine
- In VSCode -
    - Add the "Remote-SSH" extension
    - in Command Pallette (ctrl+shift+p) search for remote-ss
    - select add new ssh host - in this field you need to add in 
        - the username for the remote host
        - the IP of the remote host 
        - the location of the .pem key that was downloaded on your computer
    - E.g. - ssh adam@123.456.789.10 -i "C:\Users\HM_AT\Downloads\testvm_key.pem"
    - in command pallette search for remote-ssh connect to host and select it
    - the IP of the newly added host should be visible to connect to

- To connect via terminal with ssh keys the same command can be used -
    - E.g. -  ssh -i "C:\Users\HM_AT\Downloads\testvm_key.pem" azureuser@20.117.21.210
