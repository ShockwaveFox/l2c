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
- To run a script use the below comand
    - ./HelloAdam
    - . tells bash to run a script
    - / ensures that bash only runs the file in the current directory and ignores any other files with the same name in other directories 

#### Adding Input and Variables
- Variables hold bits of data in memory and can be used again somewhere else
- The data held in them can be changed
- Strings (letters or words) and numbers can be held in variables
- Adding variables can give a script a lot more functionality and usefulness

```
#!/bin/bash

# This is my second bash script.

echo "What is your name?"
# Print this question on screen for the user to input data

read name
# Shell takes the input data with 'read' and saves it into a variable called 'name'

echo "What chapter are you on in Linux Basics for Hackers?"
# Print this question on screen for the user to input data

read chapter
# Shell takes the input data with 'read' and saves it into a variable called 'chapter'

echo "Welcome," $name "to chapter" $chapter "of Linux Basics for Hackers!"
# Print the message on screen with the data stored from the name and chapter variables

```
- To use variables in the script, the variable name __must__ have a $ in front of it
    - name variable = $name
    - chapter variable = $chapter

#### Example Installer Script 
- This is a script to install packages on Solus OS
```
#!/bin/bash
# Set system to use bash for script

# Tells the script to stop if there are any errors
set -e

# list of packages to be installed in an array form
packages=(
  steam
  heroic-games-launcher
  falcond
  mangohud
  mangohud-32bit
  goverlay
  mesa
  mesa-32bit
  vulkan
  vulkan-32bit
  steam-devices
  inputplumber
  sdl2
  sdl2-32bit
  pipewire
  pipewire-alsa
  pipewire-pulse
  wireplumber
  alsa-utils
  discord
)

# Prints the list of packages that will be installed
echo "Packages to install:"
printf '  - %s\n' "${packages[@]}"

# Does a dry run of the packages to install to check for any errors
echo "Performing dry run (no changes will be made)..."
sudo eopkg install --dry-run "${packages[@]}"

# Prompts user to confirm or deny for installation to go ahead
read -p "Proceed with installation? [y/N] " answer
[[ "$answer" == "y" ]] || exit 0

# Performs install of packages
sudo eopkg install "${packages[@]}"

# Prints after installation has finished
echo "Installation complete"
```

``set - e`` 
- this ensures the script will stop completely if any errors happen
- array - an array is a collection of data
    - this allows groups of values to be grouped together in one place rather than creating separate variables for each item

```printf '  - %s\n' "${packages[@]}"``` 
- this prints on screen all of the packages to be installed in a formatted display
    - ' - - sets an indentation and uses a - as a bullet point
    - %s - is a placeholder for a string to be displayed
    - \n - creates a newline after each string
    - "${packages[@]}" - shows the array group as a separate item each

- The final output would display as this -
    - - Steam
    - - heroic-games-launcher
    - - falcond
    - - mangohud

```sudo eopkg install --dry-run "${packages[@]}"``` 
- this performs a test run of installing all the packages in the array
- It will print out the results of what would be installed and if there were any errors

```read -p "Proceed with installation? [y/N] " answer [[ "$answer" == "y" ]] || exit 0```
- this reads the input from the questions displayed on screen with -p
- the input is saved into the variable answer
- the answer variable is then evaluated against 'y' to ensure it is an exct match to proceed with the installation
- if the data in the answer variable does not match 'y' then the script will exit and not continue

```sudo eopkg install "${packages[@]}"```
- This will install all the packages if answer matched 'y'

#### Built in bash commands
| Command   | Function                                         |
|-----------|--------------------------------------------------|
|  :        | returns a 0 or true answer                       |
|  .        | execute a shell script                           | 
|  bg       | puts a job in the background                     |
|  break    | exits the current loop                           |
|  cd       | change directory                                 |
|  continue | restarts the current loop                        |
|  echo     | displays text on screen                          |
|  eval     | evaluate the current expression                  |
|  exit     | exits the shell                                  |
|  export   | makes a variable change permanent                |
|  fg       | puts job in the foregroun                        |
|  getopts  | parses arguements to shell script                | 
|  jobs     | lists background jobs                            |
|  pwd      | prints current directory                         |
|  read     | reads data from user input                       |
|  readonly | makes a variable read only                       |
|  set      | lists all variables                              |
|  shift    | moves parameters to the left                     |
|  test     | evaluates arguments                              |
|  [        | perform conditional test                         |
|  times    | prints system and user times                     |
|  trap     | traps a signal                                   |
|  type     | shows how arguments are interpreted as a command |
|  umask    | change default permissions for new files         |
|  unset    | deletes variable or function values              |
|  wait     | waits for background process to finish           |