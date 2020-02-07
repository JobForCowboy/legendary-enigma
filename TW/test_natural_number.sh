#!/bin/bash
# test-integer2a: проверка целочисленного значения.
DELAY=3
while [[ $REPLY != 0 ]]; do
		clear
		cat <<- _EOF_
				Please Select:

				1. Display program Information
				2. Run program
				0. Quit
		_EOF_
		
		read -p "Enter Selection [0-3] > "

		if [[ $REPLY =~ ^[0-3]$ ]]; then
				if ((REPLY == 1)); then
						echo "program foo do it fking shit"
						sleep $DELAY=3
				fi
				if ((REPLY == 2)); then
						read -p "please, input k > " INT
						if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
								if ((INT == 0)); then
										echo "k cant eq zero."
								else
										if ((INT < 0)); then
												echo "k cant be negative."
										else
												echo "k == " $INT
										fi
								fi
						else
							echo "INT is not an integer." >&2
							exit 1
							sleep $DELAY	
						fi
				fi
		else
				echo "Invalid entry. "
				sleep $DELAY
		fi
done
echo "Program terminated. "
