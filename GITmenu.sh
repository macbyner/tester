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
echo "5.  git check-ignore"
echo "6.  git commit -m "\"" you have to add comments for the commit"\"""
echo "7.  git log"
echo "8.  git remote add macbyner https://github.com/"
echo "9.  love"
echo "10.  git config to Set global user name "
echo "11.  git config to Set global user.email"
echo "12. Check Your Settings"
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
     echo "please enter the files to check-ignore IE: *.sh"
     read GITIGNORE
     git check-ignore $GITIGNORE
     ;;
     6)
     echo "please enter the comment to add to the git commit -m command"
     read GITCOMMIT
     git commit -m "$GITCOMMIT"
     ;;
     7)
     git log
     ;;
     8)
     $FORTUNE magic
     ;;
     9)
     $FORTUNE love
     ;;
     10)
     echo "please enter your user name"
     read GITUSER
     git config --global user.name $GITUSER
     ;;
     11)
     echo "please enter your email address"
     read GITEMAIL
     git config --global user.email $GITEMAIL
     ;;
     12)
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
