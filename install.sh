#!/bin/bash
RESET="\e[0m"
BOLD="\e[1m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"

clear
apt update && apt upgrade -y
apt install git -y
apt install figlet -y
clear

print_banner() {
    
    terminal_width=$(tput cols)
    
    banner_text="Script By Maloy Roy Orko"
    
    padding=$(( (terminal_width - ${#banner_text}) / 2 ))
   
    banner_line=$(printf "%-${terminal_width}s" "=")
   
    echo -e "\e[1;34m${banner_line}\e[0m"  # Blue
echo -e ${RESET}
echo -e ${RED}
figlet "KALI LINUX"
echo -e ${RESET}
echo -e ${BLUE}
figlet "Installer"
echo -e ${RESET}

    printf "%${padding}s\e[1;32m%s\e[0m\n" "" "$banner_text"  # Green
    echo -e "\e[1;34m${banner_line}\e[0m"  # Blue
}

run_command() {

    echo -e "\e[1;33mRunning command: $1\e[0m"  # Yellow
    eval "$1"
sleep 5
    echo -e "\e[1;32mCommand completed.\e[0m"  # Green
}

print_banner

run_command "pkg update && pkg upgrade -y"
run_command "pkg install wget proot tar -y"
run_command "pkg install curl -y"
run_command "wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh -O kali.sh && chmod +x kali.sh && bash kali.sh"

echo -e ${RESET}
echo -e "${GREEN}Kali Linux INSTALLED SUCCESSFULLY!"
echo -e ${RESET}
echo -e "Use ${GREEN}./start-kali.sh In Kali-Installer Directory${GREEN} to use Kali Linux ! "
