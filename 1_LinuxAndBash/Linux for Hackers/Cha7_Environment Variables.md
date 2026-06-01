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
- The prompt in the shell shows the user you are logged in as, the machine hostname and the current directory you are in -
    - E.g. - ada00211@adamslaptop Documents - 
    - logged in as ada00211
    - hostname - adamslaptop
    - current directory - documents
- The prompt will change if logged in as root -
    - E.g. - root@adamslaptop Documents
- The PS1 variable can be amneded to change the shell prompt
    - The name, hostname and base name of current working directory can be changed
    - \u or (%n) - changes username bash (zsh in brackets)
    - \h or (%m) - changes hostname (zsh in brackets)
    - \w or (%1~) - base name of current working directory (zsh in brackets)
- It can be helpful to set up distinct shell promtps if you have multiple profiles or accounts on a machine

- TO change the PS1 variable -
    - E.g. - PS1="Adams super laptop: #"
    -  Adams Super laptop: #
- The terminal will only hold this change while this current session is over - to make it permanent it needs to be exported
    - E.g. - export PS1

#### Adding to PATH
- If a newly installed tool or program is not added to the PATH variable, it will only be usable when you are actually in that tools specific directory
- To make the tool usable from anywhere on the system it needs to be added to the PATH
    - E.g. PATH=$PATH:/root/AdamsNewProgram
    - This will assign all the current contents in PATH to a new PATH variable and adds the new program too
    - The new tool will be added to the end of the PATH variable
    - The shell will now look across the whole system for the new tool

#### How to Not Add to PATH
- Do not assign a new value to PATH directly
    - E.g. - PATH=/root/AdamsNewTool
- This command will write the new tool to PATH and will overwrite all the current variables in PATH
- Only the new tool will exist in PATH and other critical commands will not be able to be used anymore
- Good practice is to save a copy of the full PATH list before adding a new line to it

#### User Defined Variables
- A new variable can be assigned by adding a variable to it
    - E.g. - NewVariable='This is a new variable'
- To see the contents of this variable you can use echo
    - E.g. - echo $NewVariable = This is a new variable
- This is helpful for repeated long commands that are typed regularly or for bash scripting
- To keep this variable permanently it needs to be exported
- To delete the variable use the unset command -
    - E.g. - unset $NewVariable