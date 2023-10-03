#!/bin/bash
#Author: Tim Pasquel
#Major: Information Technology
#Creation Date: Febuary 15, 2022
#Due Date: Febuary 25, 2022
#Course: CSC252
#Professor Name: Professor Earl
#Assignment: #2
#Filename: hw2.bash
#Purpose: To go over some of the basic linux comands

echo 1a. 
id -u -n     #username 
echo 1b. 
id -u     #user id
echo 1c. 
id -g    #group id
echo 1d. 
id -G -n    #name of each group your user is a part of
echo
echo 2a.  #current os
uname -o
echo 2b. #hostname
uname -n
echo 2c. #kernal name release and version
uname -srv
echo
echo 3a. #date mmddyyyy
date --date="09/05/2019" +"%m/%d/%Y"
echo 3b. #sun, jan, 10, 2020
date +"%A, %B %d, %Y"
echo 3c. #date and time in rfc 3339
date --rfc-3339=seconds
