#!/bin/bash

#######################################
# Check for quotes directory and setup menu options
if [ ! -d quotes ]
then
	echo "Error: quotes directory not found, make sure to unroll your tarball!" >&2
	exit 1
fi
cd quotes # Move into quotes directory
options=(* "Reprompt" "Exit") # Declare list
PS3="Pick a quote-sayer: "  # TODO Set variable PS3 to desired prompt here
echo $PS3

#######################################

select var in "${options[@]}" # Syntax to loop over a list
do
	#######################################
	# Process input
	# Note: This section was written for you, no need to modify.
	# -var pulls in user-selection of the numeric menu options
	# -REPLY pulls in string user input
	# -i.e. 7) Exit
	#		-> var=7, REPLY="" if the user typed '7'
	#		-> var=, REPLY="Exit" if the user typed 'Exit'
	input=$var
	if [ -z "$var" ]
	then
		input=$REPLY
	fi
	#######################################	
	
	case $input in
		"Exit")
			exit 0;;
		"Reprompt")
		       	REPLY=;;
		*)
			#cat $input/quote.txt;;
			if [ -r $input/quote.txt ]
			then
				echo "$input said..."
				cat $input/quote.txt
			else
				echo "Error: character not found!" >&2
				exit 7
			fi
			;;

esac
	# TODO: Respond to user-input. See assignment description for instructions
	# This is where most of your code will be written

done
