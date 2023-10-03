#!/bin/bash
#Author: Tim Pasquel
#Major: Information Technology
#Creation Date: Febuary 24, 2022
#Due Date: March 4, 2022
#Course: CSC252
#Professor Name: Professor Earl
#Assignment: #3
#Filename: hw3.bash
#Purpose: Takes data from a file and sorts it as desired, shows the names of .cpp file in my home directory,
#	  creates both hard and soft links for students2.dat, and shows all the inodes in ~earl/public
#	  in a sorted manner

echo 1a.
sort students2.dat
echo 1b.
grep -nw "CS" students2.dat
echo 1c.
grep -n "John" students2.dat
echo 1d.
grep "ECE" students2.dat | sort -k4r
echo 1e.
sort students2.dat -k4| cut -f2,4
echo

echo 2#!/bin/bash
#Author: Tim Pasquel
#Major: Information Technology
#Creation Date: Febuary 24, 2022
#Due Date: March 4, 2022
#Course: CSC252
#Professor Name: Professor Earl
#Assignment: #3
#Filename: hw3.bash
#Purpose: Takes data from a file and sorts it as desired, shows the names of .cpp file in my home directory,
#	  creates both hard and soft links for students2.dat, and shows all the inodes in ~earl/public
#	  in a sorted manner

echo 1a.
sort students2.dat
echo 1b.
grep -nw "CS" students2.dat
echo 1c.
grep -n "John" students2.dat
echo 1d.
grep "ECE" students2.dat | sort -k4r
echo 1e.
sort students2.dat -k4| cut -f2,4
echo

echo 2a.
find /home/students.kutztown.edu/tpasq515 -type f  -name *.cpp 2>/dev/null
echo

echo 3a.
rm newFile.hard
echo 3b.
ln students2.dat newFile.hard
echo 3c.
#I can confirm they are refering to the same file because when you long list 
#the directory, you can see that newFile.soft is physically pointing to 
#students2.dat showing that it is refering to it. The soft file also has every
#permission which shows it is pointing to it because when one interacts with the soft
#file, they will just be redirected to the inode for students2.dat 
echo

echo 4a.
rm newFile.soft
echo 4b.
ln -s students2.dat newFile.soft
echo 4c.
#I can confirm that they are two different files because when you long list 
#the direcory, you can see that newFile.hard and students2.dat are two seperate
#files in the directory. The two files  have the same inode signauture which means the hard file
#is an alias of studnets2.dat pointing to the same inode in memory, but are technically
#seperate files. The two files also have the same file permissions. 
echo

echo 5a.
ls -iR ~earl/public | sort -n | tail -n +10
a.
find /home/students.kutztown.edu/tpasq515 -type f  -name *.cpp 2>/dev/null
echo

echo 3a.
rm newFile.hard
echo 3b.
ln students2.dat newFile.hard
echo 3c.
#I can confirm they are refering to the same file because when you long list 
#the directory, you can see that newFile.soft is physically pointing to 
#students2.dat showing that it is refering to it. The soft file also has every
#permission which shows it is pointing to it because when one interacts with the soft
#file, they will just be redirected to the inode for students2.dat 
echo

echo 4a.
rm newFile.soft
echo 4b.
ln -s students2.dat newFile.soft
echo 4c.
#I can confirm that they are two different files because when you long list 
#the direcory, you can see that newFile.hard and students2.dat are two seperate
#files in the directory. The two files  have the same inode signauture which means the hard file
#is an alias of studnets2.dat pointing to the same inode in memory, but are technically
#seperate files. The two files also have the same file permissions. 
echo

echo 5a.
ls -iR ~earl/public | sort -n | tail -n +10
