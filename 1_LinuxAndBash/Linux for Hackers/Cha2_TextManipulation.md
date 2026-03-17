#### Text Manipulation
- Nearly everything in Linux is a text file of some sort
- cat - displays the contents of a file

#### Head
- head - shows the first 10 lines of a file
    - E.G. -  head /etc/notify.conf
    - the amount of lines shown can be changed up or down with a -** number
    - E.G. -  head -3 /etc/notify.conf

#### Tail
- tail - shows the last 10 lines of a file
  - E.G. -  tail /etc/notify.conf
    - the amount of lines shown can be changed up or down with a -** number
    - E.G. -  tail -3 /etc/notify.conf

#### Number lines in file
- nl - this shows all lines in a file with numbers
    - E.G. - nl /etc/resolv.conf   

#### Filter text in a file
 - grep - allows filtering a files contents to show only what you specify
    -E.G. - cat MissingAddresses.txt| grep Treasure
    - This command takes the cat command for the file and pipes it into grep which filters it and only displays results with Treasure in
   
### Practice
- head -n+10 practice2.txt | tail -n3
    - this command starts at line 10 in the file (-n+10) and tail displays the last 3 lines (-n3) before and including line 10
        - 8	Gorilla
        - 9 Potato
        - 10 Trout 
- tail -n+10 practice2.txt | head -n3
    - this command starts at line 10 in the file (-n+10) and head displays the first 3 lines (-n3) after and including line 10
        - 10 Trout
        - 11 Goose
        - 12 Monkey