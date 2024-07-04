#!/bin/bash
 

sed  '1d' $1>input.tmp


while read name age gender; do

	 if [ $age -gt 21 ]; then
		 echo $name
	 fi

       done<input.tmp



rm input.tmp



