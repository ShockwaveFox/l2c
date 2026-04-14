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

| 1   |  2           |   3    |     4           |     5     |    6        |     7.              |
|-----|--------------|--------|-----------------|-----------|-------------|---------------------|
| \-  |  rw- r-- r-- | 1      | ada00211  staff | 1207      | 8 Apr 15:25 | Cha5_Permissions.md |

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

### Decimal notation Permissions
- A number can be used to show one set of rwx permissions
- This is presented in a binary format - 1 equals permission granted and 0 permission not granted
- This means the 3 rwx permissions can be thought of as 3 binary on/off switches giving or not giving permissions - 000 or 111 and other combinations
- These binary numbers can be represented as one single number between 0 and 7

| Binary | Octal | rwx |
|--------|-------|-----|
|  000   |   0   | --- |
|  001   |   1   | --x | 
|  010   |   2   | -w- |
|  011   |   3   | -wx |
|  100   |   4   | r-- |
|  101   |   5   | r-x |
|  110   |   6   | rw- |
|  111   |   7   | rwx |

- The binary column in the table above represents the lowest 3 numbers in binary - from right to left 1, 2, 4
- So for all permissions to be enabled displays as -
    - rwx = 111 = 4 + 2 + 1 = 7
    - to represent the owner, group and other users having full permissions it would be - 777
    - E.G. to apply permissions to a file using the octal numbers -
        - chmod 774 adamsfile.txt - this gives rwx permissions to the owner and groups but other users read only for this file
        - other combinations can be used - 664, 770 etc

#### UGO Permissions
- UGO stands for user (owner), group and others
- There are 3 operators used -
    - \+ adds permissions
    - \- removes permissions
    - = sets a permission
- After the operator the permission to be added or removed is set - rwx -
    - E.g. - chmod u+x adamsfile.txt - gives the user (owner) execute (x) permissions
- Multiple permissions can be granted in one command - 
    - E.g. - chmod u-x, g+r, o+r adamsfile.txt - removes execute from user and adds read permissions for group and others

#### Root Execute Permission
- Linux automatically gives all files rw permissions and all directories rwx permissions by default
- Downloaded files cannot be executed straight away after downloading - this makes the system more secure
- In these kinds of cases chmod will need to be used to give execute permissions against the file -
    - E.g. chmod u+rwx newtool or chmod 766 newtool - gives user (owner) full permissions and groups and others read and write

#### Permissions with Masks
- Default permssions in Linux for files and directories are 666 (files) and 777 (directories)
- A umask (unmask) allows removing permissions from the default settings
- It is a 3 digit number that is subtracted from the default 3 digit permission number
    - E.g. a umask of 022 will be subtracted from the default 666 - which will become 644

| New Files  | New dirs |                     |
|----------- |--------- |---------------------|
|   666      |   777    | Default permissions |
|  -022      |  -022    | umask               | 
|   644      |   755    | New permissions     | 

- A umask can be configured for each user on a system in the /home/username/.profile file - it is not a universal setting
- To show the current umask setting type umask in a terminal

#### Special Permissions
- There are 3 special permissions that can be set in Linux
- Set User ID (SUID), Set Group ID (SGID) and Sticky bit

#### SUID
- There are some files that need sudo/root permissions to execute even for users without root access
- File owners permissions can be temporarily assigned to a normal user but only for that specific file
- To set an SUID a 4 needs to be added before the normal permissions -
    - E.g. chmod 4644 adamsfile.txt

#### SGID
- SGID grants temporary permissions but gives the permissions of the file owners group, not the file owner
- If the file owner is part of a group that can execute the file then the SGID allows the same permission
- An SGID applied to a directory gives ownership of files created in the directory to the directory owners group, not the file creators group
    - this helps if multiple people share the directory as they will all be able to execute the files
- To set an SGID a 2 needs to be added before the normal permissions -
    - E.g. chmod 2644 adamsfile.txt

#### Sticky bit
- Is a permission bit that can be set against a directory
- Allows a user to rename or delete the files in that directory
- Sticky bit is from old Unix legacy systems and Linux usually ignores it

#### Special Permissions and Privilege Escalation
- A regular user can be granted root permissions through privilege escalation
- Having root permissions gives access to do anything on the system
- A script that needs to change passwords may have an SUID bit set
- Files on the system with an SUI bit set can be search using find -
    - E.g. - find / -user root -perm -4000 - this searches from the root directory (/) for all files owned by root (-user root) with an SUID bit set (-perm -4000)
- A file that has an SUID bit set has an s in the permissions list instead of an x 
    - E.g. - -r-s--x--x   1 root   wheel    1446512 19 Jul  2025 sudo
- Anyone who can run the sudo file has root user privileges to passwords and other files