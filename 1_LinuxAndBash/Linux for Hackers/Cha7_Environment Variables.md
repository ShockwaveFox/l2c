#### Environment Variables
- There are 2 types of variables - environment and shell
- Environment variables - are built into and run system wide controlling the look, act and feel of the system
- Shell variables - can only affect the shell they are set in and usually typed in lower case
- variables are key-value pairs written in strings
    - E.g. - key=value - number=5
- Multiple values can be assigned to one key
    - E.g. - number=1:2:3
- Any spaces in the value need to be surrounded in quotes
    - E.g. - name='Adam Taylor'

- Every user including root has a set of default environment variables for the look and feel of the system
- These variables can be changed and tailored to your individual needs and requirements
- env - displays all default environment variables
    - environment variables are alwayys displayed in upper case
    ```
    SHELL=/bin/zsh
    HOME=/Users/ada00211
    LOGNAME=ada00211
    USER=ada00211
    ```
#### Show All Variables
- set - shows all variables on the system - environment, shell, user created and local variables as well as shell functions like command aliases
    - set | more - displays all variables in a scrollable screen using the enter key
    - use q to quit this view

#### Variable filtering
- You can use grep to filter and search for specifc variables
    - E.g. set | grep USER - filters for the environment variable to show user

#### Change Session Variables Temporarily
- A new value can be given to a variable by using its name = and a new value
    - E.g. set | grep HISTSIZE - this shows the variable that holds the amount of  terminal commands that can be stored in history
    - HISTSIZE=2000
    - HISTSIZE=500 - changes to HISTSIZE variable value to 500

#### Change Variables Permanently
- Changing a variable only changes it inside that specific shell environment - changes will be lost when closing that session
- You can make a backup of the variable before changing it -
    - E.g. - echo $HISTSIZE> ~/HISTSIZE_original.txt - prints the value of HISTSIZE into a txt file in the home directory (~/)
        - set> ~/Allvariablevalues.txt - prints all current variable settings to a txt file in the home directory
- export - makes session variable changes permanent across the system
    - E.g. - set | grep HISTSIZE
    - HISTSIZE=2000 to HISTSIZE=500 - changes HISTSIZE variable value to 500 from 2000
    - export HISTSIZE - exports the new HISTSIZE variable so it is effective across the whole system permanently

#### Changing the Shell Prompt
