# Ex 1 - Emoticon - write a program to print an emoticon
print(":-)")

# Ex 2 - Fix the code - print the names in alphabetical order
print("Aapo")
print("Eero")
print("Juhani")
print("Lauri")
print("Simeoni")
print("Timo")
print("Tuomas")

# Ex 3 - Row your boat - print the lines correctly with punctuation
print ('Row, row, row your boat,')
print ('Gently down the stream.')
print ('Merrily, merrily, merrily, merrily,')
print ('Life is but a dream.')

# Ex 4 - Minutes in a year - write a program to calculate the minutes in a year
print (60 * 24 * 365)

# Ex 5 - Print some code - print out the print command
print ('print("Hello there!")')

# Ex 6 - Name twice - print their name twice
name = input('What is your name? ')
print (name)
print (name)

# Ex 7 - Name and exclamation marks - print twice with exclamation marks
name = input('What is your name? ')
print ('!' + name + '!' + name + '!')

# Ex 8 - Name and address - ask for name and address and print info out
first_Name = input('What is your first name? ')
surname = input('What is your surname? ')
address = input('What is your address? ')
city = input('What city do you live in and postcode? ')
print (first_Name + ' ' + surname) 
print (address)
print (city)

# Ex 9 - Utterances - ask for inputs and print them out
part1 = input("The 1st part: ")
part2 = input("The 1st part: ")
part3 = input("The 1st part: ")
print(part1 + '-' + part2 + '-' + part3 + '!')

# Ex 10 - Story - user input to write a story
name = input('Please type in a name' )
year = input('Please type in a year')
print (name + ' is a valiant knight, born in the year ' + year + '. One morning ' + name + ' woke up to an awful racket: a dragon was approaching the village. Only ' + name + ' could save the village\'s residents.')

# Ex 11 - Extra Space - formatting with variables and f strings
name = "Tim Tester"
age = 20
skill1 = "python"
level1 = "beginner"
skill2 = "java"
level2 = "veteran"
skill3 = "programming"
level3 = "semiprofessional"
lower = 2000
upper = 3000

print(f"my name is {name}, I am {age} years old\n")
print("my skills are")
print(f" - {skill1} ({level1})")
print(f" - {skill2} ({level2})")
print(f" - {skill3} ({level3})\n")
print(f"I am looking for a job with a salary of {lower}-{upper} euros per month")

# Ex 12 - Arithmetics - maths calculations with interchangable variables
x = 27
y = 15

sum1=(x+y)
sum2=(x-y)
sum3=(x*y)
sum4=(x/y)

print(f"{x} + {y} = {sum1}")
print(f"{x} - {y} = {sum2}")
print(f"{x} * {y} = {sum3}")
print(f"{x} / {y} = {sum4}")

# Ex 13 - Print a single line - make all prints fit onto a single line
print(5, end="")
print(" + ", end="")
print(8, end="")
print(" - ", end="")
print(4, end="")
print(" = ", end="")
print(5 + 8 - 4, end="")

# Ex 14 - Times five - ask a user for a number and times it by 5
number = int(input("Please type in a number. "))
calculation = (number * 5)

print(f"{number} times 5 is {calculation}")

# Ex 15 - Name and Age - ask name and age and calculate age
name = input("What is your name? ")
year = int(input("What year were you born? "))
calculation_2 = (2021 - year)

print(f"Hi {name}, you will be {calculation_2} years old at the end of the year 2021 ")

# Ex 16 - Seconds in a day - ask users for number of days, calculate total seconds for number of days
seconds = int(60 * 60 * 24)
days = int(input("How many days? "))
seconds_in_days = int(days * seconds)

print(f"Seconds in that many days: {seconds_in_days}")

# Ex 17 - Product - ask for 3 numbers and multiply by each other
number1 = int(input("Please type in the first number: "))
number2 = int(input("Please type in the second number: "))
number3 = int(input("Please type in the third number: "))

product = number1 * number2 * number3

print("The product is", product)

# Ex 18 - Sum and Product - ask for 2 numbers then add and multiply them
number1 = int(input("Number1: "))
number2 = int(input("Number2: "))

sum = number1 + number2
product = number1 * number2

print(f"The sum of the numbers: {sum}")
print(f"The product of the numbers: {product}")

# Ex 19 - Sum and Mean - ask for 4 numbers and calculate the sum and mean of them
number1 = int(input("Enter Number 1: "))
number2 = int(input("Enter Number 2: "))
number3 = int(input("Enter Number 3: "))
number4 = int(input("Enter Number 4: "))

sum = number1 + number2 + number3 + number4
mean = sum / 4

print(f"Number 1:{number1:}")
print(f"Number 2:{number2:}")
print(f"Number 3:{number3:}")
print(f"Number 4:{number4:}")

print(f"The sum of the numbers is {sum} and the mean is {mean}")

# Ex 20 - food expenditure - take input and calculate
cafe = int(input("How many times a week do you eat at the student cafeteria? "))
lunch = float(input("The price of a typical student lunch? "))
groceries = float(input("How much money do you spend on groceries in a week? "))

daily = ((cafe * lunch) + groceries) / 7
weekly = (cafe * lunch) + groceries

print()
print("Average food expenditure:")
print(f"Daily: {daily} euros")
print(f"Weekly: {weekly} euros")

# COME BACK TO THIS ONE #
# Ex 21 - Students in Groups - ask for numbers of students and divide into specified group sizes
students = int(input("How many students on the course? "))
groups = int(input("Desired group size? "))

number_of_groups = students // groups

print(f"Number of groups formed: {number_of_groups}")