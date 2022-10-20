#!/bin/sh

banner()
{
cat << "EOF"

████████╗███████╗███╗   ███╗██████╗ ██╗      █████╗ ████████╗███████╗
╚══██╔══╝██╔════╝████╗ ████║██╔══██╗██║     ██╔══██╗╚══██╔══╝██╔════╝
   ██║   █████╗  ██╔████╔██║██████╔╝██║     ███████║   ██║   █████╗  
   ██║   ██╔══╝  ██║╚██╔╝██║██╔═══╝ ██║     ██╔══██║   ██║   ██╔══╝  
   ██║   ███████╗██║ ╚═╝ ██║██║     ███████╗██║  ██║   ██║   ███████╗
   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                                                     
EOF
}

RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
RESET=`tput sgr0`

echo ${GREEN}
banner
echo ${RESET}

timestamp()
{
    echo "$(date "+%d/%m/%Y %H:%M:%S")"
}

echo_error()
{
    echo "[${RED}ERROR${RESET}] $(timestamp) - $1" 1>&2
    exit 1
}

echo_warning()
{
    echo "[${YELLOW}WARNING${RESET}] $(timestamp) - $1"
}

echo_info()
{
    echo "[${GREEN}INFO${RESET}] $(timestamp) - $1"
}

echo_debug()
{
    echo "[${MAGENTA}DEBUG${RESET}] $(timestamp) - $1"
}

print_script_header()
{
    echo "############################################"
    echo "# Script: $1"
    echo "# Description: $2"
    echo "# Date: $(timestamp)"
    echo "############################################"
}

#########################################################
#    Script
#########################################################

print_script_header "Script Template" "Script template description."