#!/bin/bash




######################## disk  usage  by users #########################

# Directory to check
DIRECTORY="/home"

# Get disk usage for each user and sort by size
echo "Disk usage by user on $(date)"
du -sh $DIRECTORY/* 2>/dev/null | sort -rh




