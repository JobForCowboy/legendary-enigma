#!/bin/bash
# while-menu: программа вывода системной информации,
# управляемая с помощью меню
#DELAY=3 # Время отображения результатов на экране (в секундах)
#while [[ $REPLY != 0 ]]; do
read -p "Enter k  [] > "
if [[ $REPLY =~ ^[0-9]+$ ]]; then
		echo $REPLY
else (( $REPLY == 0 )); then
	echo "k cant eq 0"
fi
done
