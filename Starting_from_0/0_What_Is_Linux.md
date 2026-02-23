#### What is Linux?
What is Linux? - Linux Explained
 - Linux is a Kernal that interacts with hardware, software and applications
 - The Kernal is the core of Linux
 - A Distro is a version of Linux - there are multiple available versions
 - Distros have software available for all uses the same as Windows
 - Wine is available to install Windows programs
 - Proton allows windows games to be played on Linux
 - Software is installed using packages and package managers
 - A package is a collection of files and applications
 - Package managers are like app stores to install and update packages
 - Drivers are managed by the Kernal and its modules
 - All hardware is supported out of the box
 - Linux uses less resources and memory vs Windows - good for old hardware
 - Linux is built to be secure from the ground up
 - A regular account cannot do much in the system
 - A Root password is needed to install/uninstall software or access system files
 - A Root password is set when first setting up Linux
 - Linux is compartmentalised so processes only have limited permissions
 - Using the package manager ensures you are downloading safe software

 #### Command Line Basics
https://www.freecodecamp.org/news/command-line
 - Console - physical device you use to interact with the computer
 - Terminal - the window that allows inputting commands to the computer through
 - Shell - a program that takes commands, processes them and outputs results
 - Command Line Interface (CLI) - the place where the computer commands are entered
 - Shell and CLI names can be used interchangeably 
 - A Graphic User Interface (GUI) can be used to click and run tasks
 - A CLI is much quick than using a GUI
 - Scripts can be written with the CLI can use and run
 
#### Basic Commands
- echo $0 - displays current shell being used
- echo - displays text that is typed - e.g. echo hello = hello on screen
	- echo Hello World > test.txt - adds Hello World text into test.txt
	- pwd (print working directory) - shows your current location on the computer
	- ls (list) - shows all files and folders in the directory you are in
		- ls -a - shows hidden files (-a is a command parameter to add details or options)
		- ls -l - shows a detailed list of files and directories
- cd <Documents/> (change directory) - moves you to a different location on the computer, e.g moves to Documents directory
	- cd .. - moves you up one directory from your current location
	- cd on its own move you to your home directory
- mkdir <test> - makes a new directory named test
- rmdir <test> - removes/deletes test directory
- touch <test.txt> - creates a new text file named test
- rm <test.txt> - removes the text file named test
- cp <test.txt test> - copies test.txt file to test directory
- cp <test.txt test1.txt> - copies the test.txt file with a new name test1.txt
- cp <test.txt test/test1.txt> - copies the test.txt file to the test directory and renames it test1.txt
- mv <test.txt test> (move) - completely moves test.txt file to test directory
- mv <test.txt test/test1.txt>  - completely moves test.txt file to test directory and renames it test1.txt
- head - shows the beginning of a files contents
- tail - shows the end of a files contents
- --help - shows information on how to use a command - E.G. cd --help
- man - shows in depth information about a command - E.G. man cd
- Keyboard command + c - terminates running process
- Clear - clears terminal screen
- Exit - closes terminal