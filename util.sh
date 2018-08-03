# Utilities bash, some useful aliases and functions
# Function for retrieving system information based on unix systems

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
#Personal Alias and variables
alias lso="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias untarz='tar -xzf'
alias untarj='tar -xjf'
alias changeKeyboardMap="xmodmap ${DOTFILES_HOME}/.Xmodmap"
alias linkNodeToBin='sudo ln -sf $(which node) /usr/bin/node'
alias linkDownloadsDirectory='ln -s /media/Documents/jresendiz/Downloads/ ~/'
alias gitBranchParent="git show-branch | grep '*' | grep -v '$(git rev-parse --abbrev-ref HEAD)' | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
alias gitRecentBranches='for k in `git branch | perl -pe s/^..//`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r'
alias mostUsedCommands=$'history | awk \'{a[$2]++}END{for(i in a){print a[i] " " i}}\' | sort -rn | head'
alias removeQueuesFromRabbit='rabbitmqadmin -f tsv -q list queues name | while read queue; do rabbitmqadmin -q delete queue name=${queue}; done;'

alias runMySQL_5626='docker run -v $HOME/.volumes/_mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=n0m3l0s3 -e MYSQL_ROOT_HOST=% mysql:5.6.26'
alias runPostgres_9512='docker run  -v $HOME/.volumes/postgres9.5.12:/var/lib/postgresql/data -e POSTGRES_PASSWORD=kueski -e POSTGRES_USER=postgres -p 5432:5432 postgres:9.5.12'

alias sshBlickProd1='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.245.6.71 -o ServerAliveInterval=60'
alias sshBlickProd2='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.202.118.163 -o ServerAliveInterval=60'
alias sshBlickWPMultiSiteI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.20.28 -o ServerAliveInterval=60'
alias sshBlickDatabasesI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.17.70 -o ServerAliveInterval=60'
alias sshBlickCierraloDev='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/cierralo-dev.pem ubuntu@54.214.137.7'
alias sshBlickJenkins='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/jenkins-blick.pem ubuntu@52.32.244.171'
alias sshBlickKermaDev='ssh -i ~/.ssh/amazon_keys/kerma-partners.pem ubuntu@34.210.102.6 -o ServerAliveInterval=60'

alias loadAnaconda='export PATH=/home/jresendiz/anaconda3/bin:$PATH'
# alias ls='ls --color=auto'
alias ideaIBus='ibus-daemon -rd'
# alias useFirefoxATF='sudo ln -sfnv /home/jresendiz/Software/firefox/firefox /usr/bin/firefox'
# alias restoreFirefox='sudo ln -sfnv /usr/lib/firefox/firefox.sh /usr/bin/firefox'
## JAVA OPTS
#alias exportJavaOpts="export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'"
# Required imports for some programs
export IBUS_ENABLE_SYNC_MODE=1
export XMODIFIERS=""
export MAVEN_OPTS="-Xms512m"
# Clear screen
reset
