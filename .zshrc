# Path to your oh-my-zsh installation.
export ZSH=`echo $HOME`/.oh-my-zsh

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000000                   # big big history
export HISTFILESIZE=1000000               # big big history
#shopt -s histappend 

export EDITOR='subl'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh" #avit

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git setopt share_history vagrant tmux tmuxinator)

export GOPATH="`echo $HOME`.go"
# User configuration

# export PATH="/Users/jresendiz/.sdkman/candidates/groovy/current/bin:/Users/jresendiz/.sdkman/candidates/grails/current/bin:/Users/jresendiz/.sdkman/candidates/gradle/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# source ~/.bin/tmuxinator.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Skytouch


alias choiceVPNConnect='openconnect --user=juan.resendiz phcvpn.choicehotels.com'
export MAVEN_KEYSTORE="~/.maven_keystore"
export MAVEN_OPTS="-Xms512m -Djavax.net.ssl.trustStore=%MAVEN_KEYSTORE% -Djsse.enableSNIExtension=false"


# Personal stuff
echo -e "\e[00;36m##################################################################################\e[00m"
echo -e "\e[00;36m#                                                                                #\e[00m"
echo -e "\e[00;36m#           _      __    __                     ___      __       __             #\e[00m"
echo -e "\e[00;36m#          | | /| / /__ / /______  __ _  ___   / _ )___ / /____  / /             #\e[00m"
echo -e "\e[00;36m#          | |/ |/ / -_) / __/ _ \/  ' \/ -_) / _  / -_) __/ _ \/_/              #\e[00m"
echo -e "\e[00;36m#          |__/|__/\__/_/\__/\___/_/_/_/\__/ /____/\__/\__/\___(_)               #\e[00m"
echo -e "\e[00;36m#                                                                                #\e[00m"
echo -e "\e[00;36m#                                                                                #\e[00m"
echo -e "\e[00;36m##################################################################################\e[00m"
echo -e "\e[00;36m##################################################################################\e[00m"
echo -e "\e[00;36m#               ▄▄▄▄                                                             #\e[00m"
echo -e "\e[00;36m#            ▄▀▀▐╒ ─▀▄                                                           #\e[00m"
echo -e "\e[00;36m#          ▐▌       █╕                                                           #\e[00m"
echo -e "\e[00;36m#          └█      ▐▌                                                            #\e[00m"
echo -e "\e[00;36m#       ▄▄▄▄█     ╒█                                                             #\e[00m"
echo -e "\e[00;36m#      █╒  ▐╘     █╒                                                             #\e[00m"
echo -e "\e[00;36m#     █┌         █▀                                                   ▄█▀▀█▄     #\e[00m"
echo -e "\e[00;36m#    ▐▀         █▀▄                     ▄██▄█▄                       ╒▌    ▀▌    #\e[00m"
echo -e "\e[00;36m#    █         ▐▀▐▌              ▄▄▄▄█▀▀██▄▌╙▀█                      █─     ▀▌   #\e[00m"
echo -e "\e[00;36m#   ▐▌         ▌  █═        ╒▄▀▀▀╘            ╙▀▀▄▄                 ╒▌       █   #\e[00m"
echo -e "\e[00;36m#   █┌        █   ▐▌     ▄███▀                    └▀▀▄              █▌       ▀▌  #\e[00m"
echo -e "\e[00;36m#   █        ▐▀    █   ╔█▀   ▀                     ▄██▀▄            █        └▌  #\e[00m"
echo -e "\e[00;36m#   █        █     █  █▀                         ╒╜╙╤╙▀██═        ▄█▌         █  #\e[00m"
echo -e "\e[00;36m#   ▐▄       ▌     █▄█╘       ═     ═╗══╒       ┘       ▀█       ▄▀╒▌         ▌  #\e[00m"
echo -e "\e[00;36m#    █      ▐▌     ██   ▄▄╓   ▄   ─╜▐▀▀▀═▄     ┘         ▐█    ╒█▀ █         ▐▌  #\e[00m"
echo -e "\e[00;36m#    ▀▄     ▐▌     █ ╒██▀┌╘█  ═ ▄▀▀▀└└╘▀▀╤▄   ╒   ╓▄┌     ▀▌  ▄▀   ▌         █╕  #\e[00m"
echo -e "\e[00;36m#     ▀▄     ▌    ▐▀ ████▄▄█▌ ▄▀          ╒▀  ═ ▄▀─ ▀██─   █ ▄▀   ▄┐        ▐▌   #\e[00m"
echo -e "\e[00;36m#      ▀█▀╤▄┌▐    █  ███████▌▐▌             █▐ ███▄▄████   ██▀    ▌        ╒█    #\e[00m"
echo -e "\e[00;36m#        ▀█▄╘▀▀   ▌  ▀██████▌▀█▄            ▄▌██████████   █▀    █        ▄▀     #\e[00m"
echo -e "\e[00;36m#          ▀▀▄▄╜ ▄▌▄╗ ▀████▀▀ ▀█          ██▀▐█████████▀   █    ▀   █▀▀▄▄█▀      #\e[00m"
echo -e "\e[00;36m#             ╙▀█▄█▄▌═┌  ┌═└   ╘▀▄      ▄█▀╘ ▄▀▀█████▀─  ╒▄▌  ▄▀    ▐▌           #\e[00m"
echo -e "\e[00;36m#               █▀  ▀▌▀▄▄▄▄▄┌┌┌┌  ╙▀▌╙╙▀╘    ╕▄▀▀▀▀▄┌┌ ─└▐╒█▀▀╪╗▄▄▄▄█▀           #\e[00m"
echo -e "\e[00;36m#               █═  ╙ ▐▀▀▄▄ ┌╒╒╓▄╤▐╘╘╙▀▀▀▀▀█▀▀   ┌  ▄▄▄╧▀▀▀██▄▄▀▀▀▀╒             #\e[00m"
echo -e "\e[00;36m#              ┌▄█▄       ▐█▀▀╙─ ├╘▀▀▀▀▀╙└  ╙▀▀▀▀▀▀▀▄▄▀▀  ╓█▌                    #\e[00m"
echo -e "\e[00;36m#            ▄█▀─  ▀╕      █ ╙               └▀█▀▀▐▀╜     ▐█▄                    #\e[00m"
echo -e "\e[00;36m#           ▐▀            ▐▀ ▄     ▄▀        ┘▀   █      ▄▀└▐▀█╕                 #\e[00m"
echo -e "\e[00;36m#           █            ╒▌  ╘   ╥▀▄╓       ┘     ▀    ╙╙      ▀▄                #\e[00m"
echo -e "\e[00;36m#           █           ╒▀   ┌▌  ──██       ╘      █            █▄               #\e[00m"
echo -e "\e[00;36m#           ▀▄         ▄▀▄▄▀▀▀▐▌   ╙▀▐       ╙  ▐╙▀▀█           █─               #\e[00m"
echo -e "\e[00;36m#            ▐▀▄▄▄▄▄▄▄█▀▀╜     ▀▌    ▐         ╙╕    ▀▄╒       █▀                #\e[00m"
echo -e "\e[00;36m##################################################################################\e[00m"
echo -e "\n"

fortune -a

#export NVM_DIR="`echo $HOME`/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#export PATH="$HOME/.jenv/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="`echo $HOME`/.sdkman"
[[ -s "`echo $HOME`/.sdkman/bin/sdkman-init.sh" ]] && source "`echo $HOME`/.sdkman/bin/sdkman-init.sh"

export JAVA_OPTS='-server -Xms2048m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:+UseParallelOldGC -XX:+UseAdaptiveSizePolicy -XX:+UseBiasedLocking'
