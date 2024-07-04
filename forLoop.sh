#!/bin/bash


############# for printing sum of all th agruments ###########################

sum=0
for i  in $*
do
      sum=$(expr $sum + $i)
done
echo $sum 


