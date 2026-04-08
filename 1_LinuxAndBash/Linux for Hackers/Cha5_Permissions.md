#### File and Directory Permissions
- Every file and directory can have permissions set against it
- These permissions can be set for the owner of the file/directory, groups of users and all other users
- The root user has permissions to do anything on the system
- All other users have limited permissions and are sorted into relevant function groups - like Finance, Engineering etc
- Each user assigned to a group will inherit that groups permissions
- There are 3 levels of permissions -
    - r - read permissions - can only open and read
    - w - write permissions - can open and edit
    - x - execute permissions - can execute but possibly not read or edit
- The file creator will be the owner of the file and the owning group is the users current group
- The file owner can assign permissions to the file

#### Individual ownership
- chown (change owner) - changes ownership of a file to a different user
    - chown adam /Documents/test.txt - this gives adam ownership of the test.txt file

#### Group ownership
- chgrp (change group) - changes ownership of a file to a different group
    - chgrp engineers python3 - this gives the engineers group ownership of python3

#### Checking permissions
- Use the ls -l (long) command to show directory contents in long format
     - the below is an exmaple of this output

```
adam@computer Linux for Hackers % ls -l
total 48
-rw-r--r--  1 ada00211  staff  6820 13 Mar 15:23 Cha1_Basics.md
-rw-r--r--  1 ada00211  staff  2888 24 Mar 15:25 Cha2_TextManipulation.md
-rw-r--r--  1 ada00211  staff  2445 24 Mar 16:15 Cha3_Networks.md
-rw-r--r--  1 ada00211  staff  3596 27 Mar 13:36 Cha4_Software.md
-rw-r--r--  1 ada00211  staff  1207  8 Apr 15:25 Cha5_Permissions.md
-rw-r--r--  1 ada00211  staff     0  3 Mar 14:26 readme.md
```
