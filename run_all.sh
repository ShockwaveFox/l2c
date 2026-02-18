#!/bin/bash
# Shebang specifies what shell to use to run the script

echo "Today is " `date`
# prints on screen the date - date is in backtick characters

echo "\nenter the path to directory"
# prints on screen for the user to enter a path directory - \n prints it on a new line

read the_path
#read command takes the input and stores it in the_path - a variable

echo "\n your path has the following files and folders: "
# prints the text in quotes on a new line

ls $the_path
# lists what is in the path the user input    
