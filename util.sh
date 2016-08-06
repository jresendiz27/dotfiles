# Utilities bash, some useful aliases and functions
# Function for retrieving system information based on unix systems
function systemInformation()  { # Get current host related info.
    echo -e "\n${RED}You are logged on ${ENDCOLOR} $HOST "
    echo -e "\n${RED}Additionnal information:$NC ${ENDCOLOR}" ; uname -spr
    echo -e "\n${RED}Uptime :$NC ${ENDCOLOR}" ; uptime -p
    echo -e "\n${RED}Memory stats :$NC ${ENDCOLOR}" ; free -h
    echo -e "\n${RED}HDD/SDD stats :$NC ${ENDCOLOR}" ; df -hH | grep "/dev/sd"
    #echo -e "\n${RED}Users logged on:$NC " ; w -h
    #echo -e "\n${RED}Current date :$NC " ; date
    #my_ip 2>&- ;
    #echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    #echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    #echo -e "\n${RED}Open connections :$NC "; netstat -pan --inet;
    #echo
}
#Personal Alias and variables
alias lso="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias untarz='tar -xzf'
alias untarj='tar -xjf'

# JAVA STUFF
export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'
# Clear screen 
clear
