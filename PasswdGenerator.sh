#!/bin/bash

echo -e "\e[32m"
echo "████████╗██╗░░██╗███████╗██████╗░░█████╗░███╗░░██╗██╗░░░██╗████████╗░█████╗░███████╗"
echo "╚══██╔══╝██║░░██║██╔════╝██╔══██╗██╔══██╗████╗░██║██║░░░██║╚══██╔══╝██╔══██╗╚════██║"
echo "░░░██║░░░███████║█████╗░░██║░░██║██║░░██║██╔██╗██║██║░░░██║░░░██║░░░██║░░██║░░░░██╔╝"
echo "░░░██║░░░██╔══██║██╔══╝░░██║░░██║██║░░██║██║╚████║██║░░░██║░░░██║░░░██║░░██║░░░██╔╝░"
echo "░░░██║░░░██║░░██║███████╗██████╔╝╚█████╔╝██║░╚███║╚██████╔╝░░░██║░░░╚█████╔╝░░██╔╝░░"
echo "░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═════╝░░╚════╝░╚═╝░░╚══╝░╚═════╝░░░░╚═╝░░░░╚════╝░░░╚═╝░░░"
echo "  █▀█ ▄▀█ █▀ █▀ █░█░█ █▀█ █▀█ █▀▄   █▀▀ █▀▀ █▄░█ █▀▀ █▀█ ▄▀█ ▀█▀ █▀█ █▀█"
echo "  █▀▀ █▀█ ▄█ ▄█ ▀▄▀▄▀ █▄█ █▀▄ █▄▀   █▄█ ██▄ █░▀█ ██▄ █▀▄ █▀█ ░█░ █▄█ █▀▄"

echo -e "\e[0m"

sleep 1

#Question1
echo "How many characters Password you want?(e.g 14) "
read pass_length

sleep 1
echo

#Question2
echo "Choose how many passwords you want to generate with the length that was specified above? "

#Using Select Command for User Menu
select numbers in OnePassword FivePasswords TenPasswords FifteenPasswords
do


#Generating progress bar
echo -e "\e[36m"
echo -ne "GENERATING PASSWORD [=====>                               \r"
sleep 1
echo -ne "GENERATING PASSWORD [=============>                       \r"
sleep 1
echo -ne "GENERATING PASSWORD [===========================>] (Done!!)\r"
echo -ne "\n"
echo -e "\e[0m"


#the real work!
case $numbers in

#case 1
"OnePassword")
for i in {1};
do
	(tr -cd '[:alnum:]&#$@&#$%@' < /dev/random | fold -w${pass_length} | head -n 1);
done
echo -e "\e[33m"
echo "Above is your $pass_length characters password :)"
echo -e "\e[0m"
echo -e "Bye Bye!! \e[1;34m${USER}\e[1;0m"
break
;;

#case 2
"FivePasswords")
for i in {1..5};
do
	(tr -cd '[:alnum:]&#$@&#$%@' < /dev/urandom | fold -w${pass_length} | head -n 1);
done
echo -e "\e[33m"
echo "Above is your $pass_length characters passwords :)"
echo -e "\e[0m"
echo -e "Bye Bye!! \e[1;34m${USER}\e[1;0m"
break
;;

#case 3
"TenPasswords")
for i in {1..10};
do
	(tr -cd '[:alnum:]' < /dev/urandom | fold -w${pass_length} | head -n 1);
done
echo -e "\e[33m"
echo "Above is your $pass_length characters passwords :)"
echo -e "\e[0m"
echo -e "Bye Bye!! \e[1;34m${USER}\e[1;0m"
break
;;

#case 4
"FifteenPasswords")
for i in {1..15};
do
	(tr -cd '[:alnum:]' < /dev/urandom | fold -w${pass_length} | head -n 1);
done
echo -e "\e[33m"
echo "Above is your $pass_length characters passwords :)"
echo -e "\e[0m"
echo -e "Bye Bye!! \e[1;34m${USER}\e[1;0m"
break
;;

#case 5 for Invalid Input from User 
*)
echo -e "\e[1;33m \e[41m"
echo
echo "                           INVALID OPTION!!!!      "
echo -e "\e[0m"
echo -e "\e[33m"
echo "IMP: Use the options which have showed above, for e.g = type '1' (To choose the first option) or type ' 2 ' (To choose the second option)"
echo -e "\e[0m"
break
;;
esac
done


