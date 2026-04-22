#### Scripting
- Scripts can automate commands that are done regularly
- They are short, small programs that can be used repeatedly

#### The Shell
- The shell is the interface between the Operating system and the user
- It executes commands given to it instantly and can run applications,programs and utilites as well
- There are multiple different shells on Linux - z shell (used on Mac), c shell and bourne again shell (bash)
- Bash is available on all Linux distros and is widely used

#### Shell commands
- cd - change directory
- pwd - print working directory
- set - 
- umask - 
- echo - prints messages to the screen
- read - takes input data and saves it to a variable

#### First Script
- This is a basic script that displays a message to the shell terminal screen
    - script - HelloAdam
```
#! /bin/bash
# - #! is a shebang - it tells the script which language to use - here it specifies to use bash - this should be the very first top line in a script
# - other languages such as Python can be used as well

# This is my first script
# - adding a # with text after it is a comment, they are added to explain what is happening in the script. Anything after a # is ignored by the shell.

echo "Hello Adam, congratulations on your first script."
# - This prints the message in double quotes to the screen. All text MUST be in double quotes to work.

echo "I cant believe it worked!!"
# Prints a second message to the screen.
```

#### Execute Permissions
- An new script cannot be exectued by default - even by its owner
- It will need to be given execute permission rights to be able to be run
- This can be done using the chmod command when in the same directory as the file -
    - E.g. chmod 744 HelloAdam - this gives the owner execute rights on the file and everyone else read rights

#### Executing the script
