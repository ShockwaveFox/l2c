#### Python
- To use Python in terminal type - python3
    - To check installed version - python 3 --version

#### Print
- To print text - print ("Hello there")
    - All text needs to be enclosed in single ('Hi') or double quotes ("Hi")
    - Single quotes can allow double quotes to be printed out - double quotes can allow single quotes to be printed
```
print ('print("Hello there!")')
print("Hello there!")
```
- To escape special characters such as apostrophes - ' - use a backslash symbol - \
```
print ('This is how to escape apostrophe\'s')
This is how to escape apostrophe's
```

- Multiple lines can be printed one after the other
```
    - print("Welcome to Introduction to Programming!")
    - print("First we will practice using the print command.")
    - print("This program prints three lines of text on the screen.")
```

- Maths can also be calculated using print

```
print (2+2)
print (10 * 5)
print (20 / 4)
print (100 - 75)
```
- Numbers do not need quotations around them - only strings need quotes
- Using quotations will print the numbers as strings instead of calculating an answer
    - E.g. - print ('100 - 75') will display as 100-75 and not the answer of 25
- Strings can be letters, numbers or symbols -
```
print ('Hello, you 3 are scary!! Look at my special characters *&^%$')
Hello, you 3 are scary!! Look at my special characters *&^%$
```

#### Comments
- in Python a comment can be added by using a # symbol
- Anything after the # will be ignored by Pythong
- Comments are helpful for explaining what the code is doing

```
print ('How many minutes in a day?')
# Prints the string question
print (60 * 24)
# Calculates minutes times hours in a day
```
- Comments can be added anywhere, even at the end of a line

#### Variables
- Variables are used to store some data inside of them - a string or number
    - Naming a variable is done with the name of the variable, an equals sign and then data to store in it
    - E.g. - name = 'Adam'
- They can be used later across the code by "calling" them
```
name = 'Adam'
>>> print (name)
Adam
```
- Variables can be added into sentences as well using the + operator
```
print ('Hello there, ' + name)
Hello there, Adam
```
- Variables can be used as many times as you want
```
name = 'Adam Taylor'
print ('Hi ' + name + ' its really good to meet a real ' + name)
Hi Adam Taylor its really good to meet a real Adam Taylor
```
- Spaces need to be added at the end and beginning before the variable is used for proper formatting

- Variable values can be changed by updating the data stored in the variable
- The original data is deleted once this is done and will not be available unless manually put back into the variable again

```
name = 'Adam'
name = 'Taylor'
```

#### Input
- The input command takes data that the user inputs
- The data input from the user is usually stored in a variable to be called again
```
name = input('What is your name?')
What is your name? Adam Taylor
>>> print ('Hello ' +name)
Hello Adam Taylor
```
- The input function and data taken from the user is stored in the variable name
- name is then called in the print function and displays the user input

- Symbols can be used along with multiple uses of the variable
```
name = input('What is your name? ')
print ('!' + name + '!' + name + '!')
```
- Multiple inputs can be taken from a user, stored in variables and used
```
first_Name = input('What is your first name? ')
surname = input('What is your surname? ')
address = input('What is your address? ')
city = input('What city do you live in and postcode? ')
print (first_Name + ' ' + surname) 
print (address)
print (city)
```
- To add a space between the variables one has to be added in within quotes