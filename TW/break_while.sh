#while true; do
	read -p "please, input k > " k
	if [[ "$k" =~ ^-?[0-9]+$ ]]; then
        	if 
				((k == 0)); then
                		echo "k cant eq zero."
							continue
			elif 
				((k < 0)); then
                        echo "k cant be negative."
							continue
            else
                 echo "k == " $k
                	break
        	fi
	else
       		echo "k is not an integer." >&2
				continue
			exit 1
	fi	
