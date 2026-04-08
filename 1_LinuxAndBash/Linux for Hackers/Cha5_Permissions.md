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
    1    2            3         4        5       6           7
-   \-   rw- r-- r--  1 ada00211  staff  1207  8 Apr 15:25 Cha5_Permissions.md

    1. file type - d is a directory, - is a file
    2. the permissions for owner, groups and other users in that order - 3 sets of 3 permissions (rwx) - a dash (-) means no permissions given
    3. number of links
    4. owner of the file
    5. size of the file in bytes
    6. date file was created/modified
    7. file name

#### Changing permissions
- chmod (chamge mode) - is used to change permissions
- only the root user or file owner can change the permissions

### Decimal notation
- A number can be used to show one set of rwx permissions
- This is presented in a binary format - 1 equals permission granted and 0 permission not granted
- This means the 3 rwx permissions can be thought of as 3 binary on/off switches giving or not giving permissions - 000 or 111 and other combinations
- These binary numbers can be represented as one single number between 0 and 7