#!/bin/bash
#Author: Tim Pasquel
#Major: Information Technology
#Creation Date: March 24, 2022
#Due Date: April 1, 2022
#Course: CSC252
#Professor Name: Professor Earl
#Assignment: #4
#Filename: hw4.bash
#Purpose: Shows a long listing for files of a desired size in a desired directory as well as
#a long listing for files of a desired time modification in a desired directory. Defaults to 
#current directory, 10KB filesize minimum, and 180 days ago as a minimum.

#if there are more than 3 arguemnts, prints usage statement
if test "$#" -gt 3;
then
	echo "name_of_script.bash [starting directory] [minimum filesize in KB] [age for files in days]"
	exit
fi

#if -h is requested, prints usage statement
if test "$1" = "-h"
then
	echo "name_of_script.bash [starting directory] [minimum filesize in KB] [age for files in days]"
	exit
fi

case $# in
	0)  
	
	directory=$(pwd)
	file_size="10"		#sets the variables for no arguments
	time_modified="180"
 
	;;

	1)

	directory=$1
	file_size="10"		#sets the variables for 1 argument (directory)
	time_modified="180"
	
	;;

	2)

	directory=$1
	file_size=$2		#sets the varibles for 2 arguments (directory and filesize)
	time_modified="180"

	;;

	3)
	
	directory=$1
	file_size=$2		#sets the variables for 3 arguments (directory, filesize, and time last modified) 
	time_modified=$3

	;;
esac

echo Files Over $file_size Kilobytes in Size

#executes a find command through a desired directory that searches for files of the desired size and 
#puts the contents into the FIND_size variable. This variable is then looped through and its contents
#are long listed without error messages

FIND_size=$(find $directory -type f -size +"$file_size"k)  	
for val in $FIND_size
do
	ls -lh $val 2>/dev/null
done

echo

echo Files Modified Over $time_modified Days Ago

#executes a find command through a desired directory that searches for files of the desired time modification and
#puts the contents into the FIND_size variable. This variable is then looped through and its contents
#are long listed without error messages

FIND_time=$(find $directory -type f -mtime +"$time_modified")
for val in $FIND_time
do 
	ls -lh $val 2>/dev/null
done

