# Utilities bash, some useful aliases and functions

function random-string() {
    perl -pe 'binmode(STDIN, ":bytes"); tr/A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+=//dc;' < /dev/urandom | head -c $1; echo
}

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

mkcd() { mkdir -p $1; cd $1 }

# Tuning commands
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias please='sudo'
alias fuck='sudo'
alias clean='clear'
alias lso="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias untarz='tar -xzf'
alias targz='tar czf'
alias untarj='tar -xjf'
alias hs='history | grep'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias back='cd "$OLDPWD"'
alias ports='netstat -tulan -p TCP'

# SSH related
alias sshBlickProd1='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.245.6.71 -o ServerAliveInterval=60'
alias sshBlickProd2='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.202.118.163 -o ServerAliveInterval=60'
alias sshBlickWPMultiSiteI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.20.28 -o ServerAliveInterval=60'
alias sshBlickDatabasesI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.17.70 -o ServerAliveInterval=60'
alias sshBlickCierraloDev='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/cierralo-dev.pem ubuntu@54.214.137.7'
alias sshBlickJenkins='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/jenkins-blick.pem ubuntu@52.32.244.171'
alias sshBlickKermaDev='ssh -i ~/.ssh/amazon_keys/kerma-partners.pem ubuntu@34.210.102.6 -o ServerAliveInterval=60'

#Personal Alias and variables
alias changeKeyboardMap="xmodmap ${DOTFILES_HOME}/.Xmodmap"
alias linkNodeToBin='sudo ln -sf $(which node) /usr/bin/node'
alias linkDownloadsDirectory='ln -s /media/Documents/jresendiz/Downloads/ ~/'
alias gitBranchParent="git show-branch | grep '*' | grep -v '$(git rev-parse --abbrev-ref HEAD)' | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
alias gitRecentBranches='for k in `git branch | perl -pe s/^..//`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r'
alias mostUsedCommands=$'history | awk \'{a[$2]++}END{for(i in a){print a[i] " " i}}\' | sort -rn | head'
alias removeQueuesFromRabbit='rabbitmqadmin -f tsv -q list queues name | while read queue; do rabbitmqadmin -q delete queue name=${queue}; done;'
alias speedtest='curl http://speedtest.wdc01.softlayer.com/downloads/test10.zip -o /dev/null'
alias loadAnaconda='export PATH=/home/jresendiz/anaconda3/bin:$PATH'
alias gomatrix='${DOTFILES_HOME}/gomatrix.sh'
alias ideaIBus='ibus-daemon -rd'
## JAVA OPTS
#alias exportJavaOpts="export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'"
# Required imports for some programs
export IBUS_ENABLE_SYNC_MODE=1
export XMODIFIERS=""
export MAVEN_OPTS="-Xms512m"
# Clear screen
reset
