#!/bin/bash

rpattern='.*OUT: "([a-zA-Z_]+)" ([a-zA-Z]+)@([a-zA-Z0-9_-]+) '

echo "Date,Feature,User,Hostname" > output.csv
while IFS= read -r line
do
	if [[ "$line" == *TIMESTAMP* ]]
	then
		date_log=$(echo "$line" | awk '{print($4)}')

	elif [[ "$line" =~ $rpattern ]]
	then

		echo "$date_log,${BASH_REMATCH[1]},${BASH_REMATCH[2]},${BASH_REMATCH[3]}" >> output.csv
	fi
done <  solidworks_flexlm_sample.log
