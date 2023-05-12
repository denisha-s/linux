#!/bin/bash

echo "Enter a title:"
read n
IFS=' '
read -a strarr <<<"$n"
i=0
for val in "${strarr[@]}"; do
	if [ $i -eq 0 ]; then
		if [[ ${val:0:1} =~ [a-z] ]]; then
			echo "'$val' should be capitalized"
		fi
	else
		flag=0
		for w in a an in out to from for the of; do
			if [ "$w" == "${val,,}" ]; then
				flag=1
				if [[ ${val:0:1} =~ [A-Z] ]]; then
					echo "'$val' should NOT be capitalized"
				fi
			fi
		done
		if [ $flag -eq 0 ]; then
			if [[ ${val:0:1} =~ [a-z] ]]; then
				echo "'$val' should be capitalized"
			fi
		fi
	fi
	i=$((i + 1))
done
