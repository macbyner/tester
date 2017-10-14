#!/bin/bash

# this is for GIT

GITDIR=/home/jb/jbinstalls/GIT
clear
while true; do
echo "+-------------------------------------------------+"
echo "|           Select GIT job to execute             |"
echo "+-------------------------------------------------+"
echo ""
echo "P.  PWD"
echo "0.  git help"
echo "1.  git init"
echo "2.  git status"
echo "3.  git add "
echo "4.  git status"
echo "5.  git commit -m Add bash shell scripts from jbinstalls"
echo "6.  git log"
echo "7.  git remote add macbyner https://github.com/"
echo "8.  love"
echo "9.  git config to Set global user name "
echo "10.  git config to Set global user.email"
echo "11. Check Your Settings"
echo

echo -n "Enter your choice, or X for exit: "
read choice
echo

case $choice in
     P)
     pwd
     ;;
     0)
     git help
     ;;
     1)
     git init
     ;;
     2)
     git status
     ;;
     3)
     echo "please enter the files to add IE: *.sh"
     read GITADDER
     git add $GITADDER 
     ;;
     4)
     git status
     ;;
     5)
     git commit -m "Add bash shell scripts from jbinstalls"
     ;;
     6)
     git log
     ;;
     7)
     $FORTUNE magic
     ;;
     8)
     $FORTUNE love
     ;;
     9)
     echo "please enter your user name"
     read GITUSER
     git config --global user.name $GITUSER
     ;;
     10)
     echo "please enter your email address"
     read GITEMAIL
     git config --global user.email $GITEMAIL
     ;;
     11)
     git config --list 
     ;;
     X)
     echo "later gator!"
     break
     ;;
     *)
     echo "That is not a valid choice try a number from 0 to 10."
     ;;
esac  
done
