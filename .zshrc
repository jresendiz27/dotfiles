# Loading bash information if exists
if [ -f "$HOME/.bash_profile" ]; then
    source "$HOME/.bash_profile";
fi
# Path to your oh-my-zsh installation.
export ZSH=`echo $HOME`/.oh-my-zsh
export DOTFILES_HOME=`echo $HOME`/.dotfiles
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000000                   # big big history
export HISTFILESIZE=1000000               # big big history
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear:hs"
export EDITOR='vim'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda" #miloshadzic, avit, gnzh(ruby) gallifrey, nanotech, sporty_256, wezm, minimal

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
plugins=(docker git golang go ruby) # git tmux ruby golang bundler go

# User configuration

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

# colors
RED=$'\e[00;31m';
BLUE=$'\e[00;36m';
ENDCOLOR=$'\e[00m';
# useful functions

if [ -f "${DOTFILES_HOME}/util.sh" ]; then
    source "${DOTFILES_HOME}/util.sh"
fi

if [ -f "${DOTFILES_HOME}/.env.sh" ]; then
    source "${DOTFILES_HOME}/.env.sh"
fi

if [ -d "$HOME/brew/bin" ]; then
    export PATH="$HOME/brew/bin:$PATH"
fi


if [ -d "$HOME/Software/go" ]; then 
    export PATH="$HOME/Software/go/bin:$PATH"  
fi

if [ -d "$HOME/Software/leiningen" ]; then
    export PATH="$HOME/Software/leiningen:$PATH"
fi

if [ -d "$HOME/Software/exercism" ]; then
    export PATH="$HOME/Software/exercism:$PATH"
fi

if [ -d "$HOME/go" ]; then
    export GOPATH="$HOME/go"
fi

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH";
  eval "$(rbenv init -)";
fi

if [ -d "$HOME/.rbenv/shims" ]; then
  export PATH="$HOME/.rbenv/shims:$PATH";
fi

if [ -d "$HOME/.pyenv/" ]; then
  export PYENV_ROOT="$HOME/.pyenv/"
  export PATH="$PYENV_ROOT/bin:$PATH"
fi

if [ -d "$HOME/.pyenv/bin" ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
fi

if [ -d "$HOME/.pyenv/shims" ]; then                                                                                                                                                                        
  export PATH="$HOME/.pyenv/shims:$PATH"                                                                                                                                                                  
fi

if [ -d "$HOME/Software/web_drivers" ]; then
  export PATH="$HOME/Software/web_drivers:$PATH"
fi

if [ -x "$(command -v brew)" ]; then
  export OPENSSL_HOME=$(brew --prefix openssl);
else
  # This should be considered using something else instead of hardcoding the SSL
  export OPENSSL_HOME='/usr/local/opt/openssl';
fi
export PATH="$OPENSSL_HOME/bin:$PATH"
export LDFLAGS="-L$OPENSSL_HOME/lib"
export CPPFLAGS="-I$OPENSSL_HOME/include"
export PKG_CONFIG_PATH="$OPENSSL_HOME/lib/pkgconfig"
export NUMBER_OF_HEADERS=$(ls -p $DOTFILES_HOME/headers | wc -l)
export HEADER="headers/header_$(( ( RANDOM % NUMBER_OF_HEADERS ) + 1)).txt"
# Personal stuff
if [ -x "$(command -v lolcat)" ]; then
  cat $DOTFILES_HOME/$HEADER | lolcat
else
  cat $DOTFILES_HOME/$HEADER
fi
echo -e ""
echo -e ""
fortune -na
echo -e ""
echo -e ""

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="`echo $HOME`/.sdkman"
[[ -s "`echo $HOME`/.sdkman/bin/sdkman-init.sh" ]] && source "`echo $HOME`/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"
