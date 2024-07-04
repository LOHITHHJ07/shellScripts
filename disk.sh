#!/bin/bash



###### simple script which alerts when disk usage is more than  threshold value ########################


threshold=30

echo $threshold 

disk_used=$(df -h | awk '{print $5}'|sed '1d'|head -1| sed 's/%//')


if [ $disk_used -gt $threshold ]; then

	echo your disk is running out of storage 
 else
	 echo you disk is below threshold value 

fi





