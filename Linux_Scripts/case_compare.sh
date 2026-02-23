#!bin/zsh

# set -x
# sets debugging on - prints each executed line

fruit="grape"
# sets fruit variable as apple

case $fruit in
# starts a case comparison code block to check the value of fruit against the list below
	"apple")
		echo "This is a red fruit"
	;;
	"banana")
		echo "This is a yellow fruit"
	;;
	"orange")
	echo "This is an orange fruit"
	;;
	# ;; separates each block of code to be run
	*)
	echo "I dont know this fruit"
	;;
# if the value for fruit matches or does not match whats in the list the respective line is printed out

esac
# closes the case comparison block of code
