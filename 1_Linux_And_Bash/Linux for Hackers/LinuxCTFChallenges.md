#### Linux CTF Challenge - thoughs and experiences

- I am adding this review page for the CTF challenges to track my experiences working through these and my thought process on solving them.

#### Set up
- Using a free tier Azure subscription I was unable to use the pre-defined Standard_B1s VMs in the Terraform file.
- Using co-pilot I have the below command that allows me to check different VM sizes available in different locations -
`az vm list-skus --location northeurope --size Standard_d2ads_v7 --output table`
- It also shows if it is restricted under my free subscription

- The below machines are available in this location on my subscription to use -
`Standard_D2as_v7 Standard_D2als_v7 Standard_D2ads_v7` 

- to delete a resource group
`az group delete --name`

- connect to - "4.210.66.58"
- CTFpassword123!

- Usage:
  - verify [challenge number] [flag] - Submit flag for verification
  - verify 0 CTF{example} - Example flag
  - verify progress     - Shows your progress

  #### Flag 1 - verify 1 CTF{hidden_files_e72a743f}
  - Find and read a hidden file in ctf_challenges - 
  - I ls to see what is in my current directory
  - cd into ctf_challenges folder and ls
  - remember to show hidden files use ls -la
  - see a .hiddenfile and use cat to see its contents

  #### Flag 2 - verify 2 CTF{file_search_e72a743f}
  - Locate a file containing "secret" in its name under your home directory
  - cd ~ to go into my home directory
  - hints given reference "find" and file searching
  - had to search the pdf and my notes to find(!) where I had noted this command
  - write command `find ~ -type f -name "secret"` but no results
  - use a wildcard again instead `find ~ -type f -name "secret*"` which finds `/home/ctf_user/documents/projects/backup/secret_notes.txt`
  - cd into this location and use cat to read the flag in the file

  #### Flag 3 - CTF{log_analysis_e72a743f}
  - Find and read an unusually large file in /var/log
  - cd into /var/log and use ls -la to show all files and extra details
  - spot large_log_file.log
  - try to use cat to read the file but it comes out as gibberish symbols
  - have the same results with less, head and tail
  - try to send the log file to a txt file but get access denied - even with sudo
  - after a lot of googling and asking co pilot I tried to below command after reading on a webpage `tail -f -n 6 large_log_file.log`
  - this showed the ctf flag at the end of the file!
  - I was using the right tools but just needed to look in the right place of the file
  - I had found this strings command to try to get the log file to display correctly `strings large_log_file.log | less | grep 'ctf{*'`
  - it did not find the flag as linux is case sensitive which I forgot!
  - using this command `strings large_log_file.log | less | grep 'CTF{*'` found the flag straight away
  - this command does not seem to work `less large_log_file.log | grep 'CTF{`
  - strings help display data that is in normal ascii letters in a binary format file

  #### Flag 4 - CTF{user_enum_e72a743f}
  - Another user has a flag in their login configuration
  - have tried looking in the etc/passwd and shadow files - nothing
  - have chased down the nobody profile and the nologin file but no luck
  - eventually went to the flag_user home dir
  - used ls -la to show all files
  - used cat on .profile file to find flag!

  #### Flag 5 - CTF{perm_sleuth_e72a743f}
  - Find a suspicious file with wide-open permissions under /opt
  - quite an easy one
  - cd into /opt and ls -l to see all files
  - cd through the dirs to find the system.conf file and read it with cat to find the flag

  #### Flag 6 - CTF{net_detective_e72a743f}
  - Something is listening on port 8080. Connect to it
  - started with ifconfig - didnt show details needed
  - tried using nmap commands from pdf - `nmap -sL -p 8080` - did not work but specifying with an ip did
  - I tried to think how to see the port looking in dev - this did not display anything helpful
  - I tried looking with ps and ps aux and checking background jobs - no dice
  - tried to connect to port 8080 with localhost:8080 but didnt work
  - googled and found out about ss and and netstat - have to use sudo with these for them to work!
    - `netstat -tulpn` `ss -tulpn` - to show all tcp,udp, listening ports, port numbers and process IDs
- found the PID and searched it in ps aux - result was `nc -l -q 1 8080` - nc is netcat -l is listening port 8080 (co-pilot helped)
- asked co-pilot how to connect to port 8080 - nc localhost 8080
- this showed me the flag!

#### Flag 7 - CTF{decode_master_e72a743f}
- use find to see where the dir is - `sudo find / -type d -name ctf_challenges`
- cd into folder and ls to see contents
- use cat on the encoded_flag.txt file to see contents
- use google to find out how to decode base64 in linux
- use `echo UTFSR2UyUmxZMjlrWlY5dFlYTjBaWEpmWlRjeVlUYzBNMlo5Q2c9PQo= | base64 -d` - output was still encoded
- tried more commands and sudo but still have encoded output - tried decoding the output again and got the flag!

#### Flag 8 - CTF{ssh_secrets_e72a743f}
- Configure SSH key authentication and find a hidden flag
- cd into /etc/ssh folder
- used cat on a few files to see if it is hidden there
- googled ssh authentication and review how to create new ssh keys
- create new keys and cd into dir where they are located
- use ls and find secrets file - cd in and ls -la to show all hidden files
- find key in .authorisedkeys file using cat

#### Flag 9 - CTF{dns_name_e72a743f}
- Someone modified a critical DNS config file. Fix it
- cd into etc/ and ls to find resolv.conf file (mentioned in hints)
- cat resolv.conf and flag is in the file

#### Flag 10 - CTF{net_copy_e72a743f} 
- Transfer any file to ctf_challenges to trigger the flag
- using google found the scp command
- created new file on my local machine (in terminal - cat and the vi to edit)
- used scp to upload file - scp transferflag.txt ctf_user@74.234.64.183:/home/ctf_user/ctf_challenges

#### Flag 11 - CTF{web_config_e72a743f}
- The web server is running on a non-standard port. Find and fix it
- started by finding the nginx folder in /etc
- used cat on nginx.conf
- did a lot of googling trying to figure out how and where nginx is confgigured - sites available & default, .conf, checked access and error logs
- used ps aux | grep nginx, netstat -tulpn to see its on port 8083
- tried it edit default file in sites-available - did not have access
- chmod the permissions on default and change default ports to 8080 - did not get flag
- tried connecting via nginx localhost:8083 with no luck
- asked copilot and it recommended - connecting in browser with http://localhost:8083 no luck
- tried second recommendation of connecting via curl http://localhost:8083
- got the flag!
- nginx is a web server so need to remember to try and connect using some kind of web broswer type connectioned

#### Flag 12 - CTF{icmp_e72a}
- Someone is sending secret messages via ping packets
- very hard - no idea where to start and not covered in pdf at all
- started with ifconfig, ps aux, went to network folder in /etc to look at files
- tried netstat and ss as well
- googled how to inspect network traffic on linux and found tcpdump
- used various guides and tried different interfaces to check traffic and filter on ping (icmp) - sudo tcpdump -i any icmp
- found a good guide with commands to try and got the hex and ascii command to work as it showed the correct way to use it -
    - my original try - sudo tcpdump -iX lo icmp
    - correct format and using any from tcpdump -D - sudo tcpdump -i any icmp -X
- this showed the flag in the traffic

#### Flag 13 - CTF{cron_master_e72a743f}
- A scheduled task contains a hidden flag. Find and read it
- checked pdf to see details on cronjobs locations
- tried to use find to see where crontab is (where cron job schedules are kept)
- found anacron and tried to find it but was not correct
- went back to crontab and looked at right hand side of table at daily, weekly reports
- went to folders and checked daily folder
- found ctf file with flag

#### Flag 14 - CTF{proc_env_e72a743f}
- A running process has a secret in its environment. Extract it
- use cd into proc dir, ls to see contents
- use ps aux to see what is running - cant see anything helpful
- try ps a to see what happens - not sure what a means so ask co pilot
- see another option of ps x which shows process daeamons - shows a dir location with a secret.sh file
- cd into location but have no permissions to ls contents
- google how to find env variables of a running process - hint is given of getting the PID first
- get the pid of the process and check in the /proc folder for that process number
- cd into pid folder - cat environ folder to find flag

#### Flag 15 - CTF{archive_dig_e72a743f}
- A flag is buried inside nested archives. Dig it out
- searched system for any and all .tar files - sudo find / -type f -name '*.tar'
- tried tar -xvf and xzf on files found
- only got wrong flag for 10 appear
- used cat on inner.tar
- found flag

#### Flag 16 - CTF{link_follow_e72a743f}
- Follow the trail of symbolic links to find the flag
- remembered .tar files in home dir while doing flag 15
- found follow me file - used cat and found flag

#### Flag 17 - CTF{history_sleuth_e72a743f}
- Someone typed a flag in their command history. Find it
- was a hard one - no idea where to start
- tried searching whole system for a file named history or hist and bash - no results
- tried looking in bin/bash - no luck
- googled and found file name is .bash_history - hidden in home folder
- checked my home folder - file exists
- check /etc/passwd for other users
- was not flag_user profile
- was in old_admin .bash_history file - use cat to find flag

#### Flag 18 - CTF{disk_sleuth_bb3baefc}
- A flag is hidden in filesystem metadata. Investigate mounted filesystems
- HARD
- mainly as I had no idea what to do or where to start
- had to google what a disk image is - found out .img, .bin and .iso files are
- used find to search for all 3 and found the .img file
- had to mount it needed googles help to do this - sudo mkdir /mnt/disk_img - then - sudo mount -o loop /opt/ctf_disk.img /mnt/disk_img
- took a while ot figure out I just had to cd into the /mnt/disk_img drive
- used ls -la to find hidden flag file



http://help.searchspring.net/hc/requests/296923__;!!GahIEkFg!xc_mMXTVoPpOXfFA2aHevjSueu21WcRBcfanakFfGzF2yarvIXmBCgn22vrOWoMxGewKchTGWXxhOMCWIU8zn2ALGmc_dnDrWng8zKnlsLZ5jsqCqWSy-rY$