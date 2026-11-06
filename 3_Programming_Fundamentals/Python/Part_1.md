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
- Each print funtion will usually print on its own line
- Adding the end="" argument will make it so it stays on a single line
```
print(5, end="")
print(" + ", end="")
print(8, end="")
print(" - ", end="")
print(4, end="")
print(" = ", end="")
print(5 + 8 - 4, end="")
5 + 8 - 4 = 9
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
name = "Adam"
    print(name)
    Adam
name = "Taylor"
print(name)
    Taylor
```

- Variables that do not change are known as "hard-coded" variables
- Variables can be amended - adding extra text or numbers to the original variable value
    - This is done by using the normal naming process for a variable along with a + symbol and the extra data to be added to it
```
word = "Hello"
print(word)
    Hello
word = word + "!!!"
print(word)
    Hello!!!
```
- Variables should be named in relation to what they are going to be used for
- They have to begin with a letter - lower or upper case
- They can contain letters, numbers and under scores _
- Lower and upper case letters are treated as different characters
    - Variables called - name, Name and NAME are all different variables and can contain different bits of data each
- Common rules are variables should only use lower case letters and separate multiple words with an under score

#### Input
- The input command takes data that the user inputs
- The data input from the user is usually stored in a variable to be called again
```
name = input('What is your name? ')
    What is your name? Adam Taylor
print ('Hello ' + name)
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

```
name = input('Please type in a name' )
year = input('Please type in a year')
print (name + ' is a valiant knight, born in the year ' + year + '. One morning ' + name + ' woke up to an awful racket: a dragon was approaching the village. Only ' + name + ' could save the village\'s residents.')
```

#### Integers
- Integers are whole numbers that do not have any decimal parts
    - E.g - 1, 19, 300
- Integers can be assigned to variables
```
age = 21
print(age)
    21
```
- Integers do not need quote marks around them to be assigned to a variable
- Using quotes will turn them into a string type variable
```
number = 100
number1 = "100"
print(number + number)
    200
print(number1 + number1)
    100100
```
- A string type cannot calculate mathematical sums - an integer can
- Integer and string values cannot be mixed together
```
answer = 10*2
print("The answer is " + answer)
    Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
    TypeError: can only concatenate str (not "int") to str
```
- The str function can make an integer value into a string value
```
print("The answer is " + str(answer))
    The answer is 20
```
- Print can use built in functionality to combine different values
    - This is done by using a commma between the 2 different types
```
print("The answer is", answer)
    The answer is 20
```
- A space is automatically added when using the comma

#### f strings
- f strings can format print output that contains multiple data types
```
print(f"The answer is {answer}")
    The answer is 20
```
- The f ensures the variable data becomes part of the string type being printed out
- f strings can contain multiple variables and types
```
name="Adam"
age = 38
town = "Toddington"
print(f"Hi {name}, you are {age} and you live in {town}")
    Hi Adam, you are 38 and you live in Toddington
```
- Using a f string is much simpler than using the comma
```
print("Hi", name, "you are", age, "and you live in", town,".")
    Hi Adam you are 38 and you live in Toddington .
```

#### Floating Point Numbers
- floats are numbers with decimal points
    - E.g. - 1.5, 7.9. 300.21
- They are used the same way as integers
```
number1 = 2.5
number2 = 1.25
number3 = 3.62
print(number1 + number2 + number3)
    7.37
```

#### Arithmetic Operations
- Python can use many different mathematical operators

| Operator |  Purpose                  | Example | Result |
| :------- | :------------------------ | :------ | :------|
|     +	   | Addition	               | 2 + 4   |    6   |
|     -	   | Subtraction	           | 25 - 5  |    20  | 
|     *    | Multiplication            | 3 * 9   |    27  |
|     /    | Division (float result)   | 9 / 2   |    4.5 |
|     //   | Division (integer result) | 9 // 2  |    4   |
|     %    | Modulo                    | 9 % 2   |    1   |
|     **   | Exponentiation (power of) | 2 ** 3  |    8   |

- Calculation order follows maths
    1. Exponents (to the power of)
    2. Multiplication
    3. Division
    4. Addition
    5. Subtraction
- Using brackets can change the order - calculations in brackets will be done first and then the rest follwing the above order

- An operand is a number - integer or float
- They operand type will specify the results given
    - E.g. - integer + integer = integer
    - float + float = float
    - float + integer = float
```
2+2
4
2.5+2.5
5.0
2.5+3
5.5
```

- Using division / always results in a float - even when using integer numbers
```
9 / 2
4.5
```
- There is an integer division operator - //
    - The calculation will be rounded down to the nearest integer
```
9 // 2
4
```

#### Input with numbers
- The input function reads in strings as default
- To convert string numbers to actual numbers the 'int' function can be used
```
input_year = input("What year were you born? ")
    What year were you born? 1988
print(input_year)
    1988
print(f"Your age in 2026 is - {2021 - input_year}")
    Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
    TypeError: unsupported operand type(s) for -: 'int' and 'str'
year = int(input_year)
print(f"Your age in 2026 is - {2026 - year}")
    Your age in 2026 is - 38
```
- This can be done without creating an extra variable using 'int' with 'input'
```
year = int(input("What is your birth year? "))
What is your birth year? 1988
print(f"You are {2026 - year} in 2026.")
You are 38 in 2026.
```
- Strings can be changed into floats with the 'float' function
```
weight = float(input("What is your weight? "))
    What is your weight? 86
height = float(input("What is your height? "))
    What is your height? 183
print(f"You are {height} tall and weigh {weight} kilograms.")
    You are 183.0 tall and weigh 86.0 kilograms.
print(f"You are {height}cm tall and weigh {weight} kilograms.")
    You are 183.0cm tall and weigh 86.0 kilograms.
```

#### Using variables
- Multiple variables can be used in a program to store data
```
number1 = int(input("Enter 1st Number - "))
number2 = int(input("Enter 2nd Number - "))
number3 = int(input("Enter 3rd Number - "))

sum = number1 + number2 + number3
print(f"The sum of the numbers is {sum}")
```
- This can be shortened by reusing the same variable for the numbers input
```
sum = 0

number = int(input("Enter 1st Number - "))
sum = sum + number

number = int(input("Enter 2nd Number - "))
sum = sum + number

number = int(input("Enter 3rd Number - "))
sum = sum + number

print(f"The total of the numbers is {sum}")
```
- The variable sum is updated each time with the input from the number variable
- There is a shorthand version that can be used instead - variable1 += variable2
```
sum = 0

number = int(input("Enter 1st Number - "))
sum += number

number = int(input("Enter 2nd Number - "))
sum += number

number = int(input("Enter 3rd Number - "))
sum += number

print(f"The total of the numbers is {sum}")
```
- The second variable can sometimes not be needed at all - the input can be fed and added directly to the one variable
```
sum = 0

sum += int(input("Enter 1st Number - "))
sum += int(input("Enter 2nd Number - "))
sum += int(input("Enter 3rd Number - "))

print(f"The sum of the values is - {sum}")
```
- If data is needed to be stored for each input independently separate variables should be used
- Variable names should be descriptive of the data they are storing
```
name = input("What is your name? ")
age = input("What is your age? ")

print(f"Hi {name}, you are {age} years old today!")
```