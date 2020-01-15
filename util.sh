#!/usr/bin/env bash
# Utilities bash, some useful aliases and functions

function random-string () {
    perl -pe 'binmode(STDIN, ":bytes"); tr/A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+=//dc;' < /dev/urandom | head -c $1; echo
}

function secure-string() {
    openssl rand 1024 | openssl enc -base64 -A | head -c $1; echo
}

function colours() {
  for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
  done
}

function systemInformation()  { # Get current host related info.
    echo -e "${RED} - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${ENDCOLOR}"
    echo -e "\n${RED}You are logged on ${ENDCOLOR} $HOST "
    echo -e "\n${RED}Additional information:$NC ${ENDCOLOR}" ; uname -spr
    echo -e "\n${RED}Uptime :$NC ${ENDCOLOR}" ; uptime -p
    echo -e "\n${RED}Memory stats :$NC ${ENDCOLOR}" ; free -ht
    echo -e "\n${RED}HDD/SDD stats :$NC ${ENDCOLOR}" ; df -hHT -x devtmpfs -x tmpfs
    echo -e "\n${RED}Model name :$NC ${ENDCOLOR}"; cat /proc/cpuinfo | grep -E -m 1 "model name" | cut -d':' -f2
    echo -e "\n${RED}# of Cores :$NC ${ENDCOLOR}" ; nproc
    echo -e "\n${RED} - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${ENDCOLOR}"
    #echo -e "\n${RED}Users logged on:$NC " ; w :q1-h
    #echo -e "\n${RED}Current date :$NC " ; date
    #my_ip 2>&- ;
    #echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    #echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    #echo -e "\n${RED}Open connections :$NC "; netstat -pan --inet;
    #echo 
}


# Arguments $1: Ticket id from deploy 
# All the logs are stored in ~/Desktop/logs-deploys 
function upload_logs () {
  path_file=`ls -h ~/Desktop/logs-deploys/$1*.log`
  filename=`basename $path_file`
  AWS_PROFILE=production aws s3 cp $path_file s3://kueski-production-logs/deployments/$filename
  echo "File:$filename upladed to deployments bucket"
}

# Arguments: $1 string to look for in logs 
function find_logs() {
  for i in $(find ./ -name "*.log*"); do echo -e ">> File: $i \n"; grep ${i} -C 4 -i -e $1; done;    
}

# Arguments: $1 - Local port, $2 remote port, $3 instance, i.e. blue-kueski                                                                                                                                   
# ssh_tunnel 9292 8085 blue-affiliate_marketing   
ssh_tunnel() {
  eval "ssh -NL ${1}:localhost:${2} ${3} -v"
}

function mkcd() { mkdir -p $1; cd $1; }

function backup() { cp -rfv "$1"{,.bak-$(date '+%Y-%m-%d_%H:%M:%S')};}


# Tuning commands
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias please='sudo'
alias fuck='sudo !!'
alias hold-my-beer='sudo'
alias clean='clear'
alias untarz='tar -xzf'
alias targz='tar czf'
alias untarj='tar -xjf'
alias hs='history | grep'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias back='cd "$OLDPWD"'
alias ports='netstat -tulan -p TCP'
alias ping='ping -c 5'
alias ldir="ls -al | grep ^d"
alias json="python -m json.tool"
alias myip="curl http://ipecho.net/plain; echo"
alias svim='sudo vim '
alias aio='exit'

# Documents and shotcuts
alias personal='cd ~/Documents/Personal'
alias ex-go='personal && cd Exercism/go'
alias ex-clj='personal && cd Exercism/clojure'
alias lrn-clj='personal && cd LearningClojure'
alias lrn-go='personal && cd LearningGo'
alias rld-util='source $DOTFILES_HOME/util.sh'
alias rld-zsh='source ~/.zshrc'
alias ed-util='$EDITOR $DOTFILES_HOME/util.sh'
alias ed-zsh='$EDITOR ~/.zshrc'
alias ed-brc='$EDITOR ~/.bashrc'
alias ed-env='$EDITOR $DOTFILES_HOME/.env.sh'
alias dotfiles="cd $DOTFILES_HOME"

# SSH related
alias sshBlickProd1='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.245.6.71 -o ServerAliveInterval=60'
alias sshBlickProd2='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.202.118.163 -o ServerAliveInterval=60'
alias sshBlickWPMultiSiteI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.20.28 -o ServerAliveInterval=60'
alias sshBlickDatabasesI='ssh -i ~/.ssh/amazon_keys/blick.pem ubuntu@54.186.17.70 -o ServerAliveInterval=60'
alias sshBlickCierraloDev='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/cierralo-dev.pem ubuntu@54.214.137.7'
alias sshBlickJenkins='ssh -o ServerAliveInterval=60 -i ~/.ssh/amazon_keys/jenkins-blick.pem ubuntu@52.32.244.171'
alias sshBlickKermaDev='ssh -i ~/.ssh/amazon_keys/kerma-partners.pem ubuntu@34.210.102.6 -o ServerAliveInterval=60'
alias ssh-hosts='grep -E "^Host ([^*]+)$" $HOME/.ssh/*_config | sed \\'s/Host //\\''

#Personal Alias and variables
alias changeKeyboardMap="xmodmap ${DOTFILES_HOME}/.Xmodmap"
alias linkNodeToBin='sudo ln -sf $(which node) /usr/bin/node'
alias linkDownloadsDirectory='ln -s /media/Documents/jresendiz/Downloads/ ~/'
alias gitRecentBranches='for k in `git branch | perl -pe s/^..//`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r'
alias mostUsedCommands=$'history | awk \'{a[$2]++}END{for(i in a){print a[i] " " i}}\' | sort -rn | head'
alias removeQueuesFromRabbit='rabbitmqadmin -f tsv -q list queues name | while read queue; do rabbitmqadmin -q delete queue name=${queue}; done;'
alias speedtest='curl http://speedtest.wdc01.softlayer.com/downloads/test10.zip -o /dev/null'
alias gomatrix='${DOTFILES_HOME}/gomatrix.sh'
alias ideaIBus='ibus-daemon -rd'

# Bundle aliases
alias berb='bundle exec ruby '
alias bert='bundle exec rake test --trace'
alias ber='bundle exec rake '
alias bi='bundle install --force'
alias bu='bundle update '

# Python aliases
alias pir='pip install -r requirements.txt'
alias pifr='pip freeze > requirements.txt'
alias pifg='pip freeze | grep '

## Export Software folder

export PATH=$PATH:~/Software

## JAVA OPTS
# alias exportJavaOpts="export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'"
# Required imports for some programs
export IBUS_ENABLE_SYNC_MODE=1
export XMODIFIERS=""
export MAVEN_OPTS="-Xms512m"
