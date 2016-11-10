# Utilities bash, some useful aliases and functions
# Function for retrieving system information based on unix systems
function systemInformation()  { # Get current host related info.
    echo -e "${RED} - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${ENDCOLOR}"
    echo -e "\n${RED}You are logged on ${ENDCOLOR} $HOST "
    echo -e "\n${RED}Additionnal information:$NC ${ENDCOLOR}" ; uname -spr
    echo -e "\n${RED}Uptime :$NC ${ENDCOLOR}" ; uptime -p
    echo -e "\n${RED}Memory stats :$NC ${ENDCOLOR}" ; free -ht
    echo -e "\n${RED}HDD/SDD stats :$NC ${ENDCOLOR}" ; df -hHT -x devtmpfs -x tmpfs
    echo -e "\n${RED}Model name :$NC ${ENDCOLOR}"; cat /proc/cpuinfo | grep -E -m 1 "model name" | cut -d':' -f2
    echo -e "\n${RED}# of Cores :$NC ${ENDCOLOR}" ; nproc
    echo -e "\n${RED} - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${ENDCOLOR}"
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
alias changeKeyboardMap="xmodmap ${DOTFILES_HOME}/.Xmodmap"
alias linkNodeToBin='sudo ln -sf $(which node) /usr/bin/node'
alias gitPrettyLog='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'
alias gitBranchParent="git show-branch | grep '*' | grep -v '$(git rev-parse --abbrev-ref HEAD)' | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
alias gitRecentBranches='for k in `git branch | perl -pe s/^..//`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r'
alias mostUsedCommands="history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head"
alias ls='ls --color=auto'
alias ideaIBus='ibus-daemon -rd'
## JAVA OPTS
#alias exportJavaOpts="export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'"
# Required imports for some programs
export IBUS_ENABLE_SYNC_MODE=1
export XMODIFIERS=""
# Clear screen
clear
