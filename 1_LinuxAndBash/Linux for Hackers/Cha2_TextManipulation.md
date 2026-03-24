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
- nl practice2.txt
    - Displays and numbers all lines in the file
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

#### Find and Replace
- sed - searches for text and allows actions/substitutions to be done against it
    - E.G. - (1)sed (2)s/Gorilla/Ape/(1/g) (3)Users/adam/Documents/practice2.txt > (4)practice4.txt
        - 1 - calls the sed command
        - 2 - s searches for the word to replace (Gorilla) and then the word to replace it with (Ape)
            - 1/g means replace only the first appearance of Gorilla or replace it globally in the file - only one of these should be used - E.G 1 OR g
        - 3 - this the file to search and replace in practice2.txt
        - 4 - the changes are saved into a new file practice4.txt

#### More and Less
- more - allows you to view a file one page at a time
- can scroll through using the __enter__ key
- press **q** to quit

- less - allows you to view a file one page at a time
- can scroll through using the __enter__ key
- press **q** to quit
- can search through the file using __/__ in bottom left of the screen
- you an scroll through the results using __n__ (for next)


EXERCISES
1. [] Use cat command to view the contents of a file
2. [] Use the more command to display the contents of a file
3. [] Use the less command to display the contents of a file
4. [] Use the nl command to add line numbers to the filer
5. [] Use the tail command to only display the last 12 lines of a file
6. [] Use the cat command on a file and pipe it into grep to search for specific words