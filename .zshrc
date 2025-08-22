# Loading bash information if exists
# [ -f "$HOME/.bash_profile" ] && source "$HOME/.bash_profile";
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
plugins=(git) # git tmux ruby golang bundler go

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

[ -f "${DOTFILES_HOME}/util.sh" ] && source "${DOTFILES_HOME}/util.sh";
[ -f "${DOTFILES_HOME}/.env.sh" ] && source "${DOTFILES_HOME}/.env.sh";
[ -d "$HOME/brew/bin" ] && export PATH="$HOME/brew/bin:$PATH";
[ -d "$HOME/Software/go" ] && export PATH="$HOME/Software/go/bin:$PATH";
[ -d "$HOME/Software/leiningen" ] && export PATH="$HOME/Software/leiningen:$PATH";
[ -d "$HOME/Software/exercism" ] && export PATH="$HOME/Software/exercism:$PATH";
[ -d "$HOME/go" ] && export GOPATH="$HOME/go";
[ -d "$HOME/.rbenv/bin" ] && export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)";
[ -d "$HOME/.rbenv/shims" ] && export PATH="$HOME/.rbenv/shims:$PATH";
[ -d "$HOME/.pyenv/" ] &&  export PYENV_ROOT="$HOME/.pyenv/" && export PATH="$PYENV_ROOT/bin:$PATH";
[ -d "$HOME/.pyenv/bin" ] && export PATH="$HOME/.pyenv/bin:$PATH" && eval "$(pyenv init -)";
[ -d "$HOME/.pyenv/shims" ] && export PATH="$HOME/.pyenv/shims:$PATH";
[ -d "$HOME/Software/web_drivers" ] && export PATH="$HOME/Software/web_drivers:$PATH";

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="`echo $HOME`/.sdkman"
[[ -s "`echo $HOME`/.sdkman/bin/sdkman-init.sh" ]] && source "`echo $HOME`/.sdkman/bin/sdkman-init.sh"

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


if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi


export PATH="$HOME/bin:$PATH"
export NUMBER_OF_HEADERS=$(ls -p $DOTFILES_HOME/headers | wc -l)
export HEADER="headers/header_$(( ( RANDOM % NUMBER_OF_HEADERS ) + 1)).txt"
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export GEM_HOME="$HOME/.rvm/gems/ruby-3.3.0"
export GEM_PATH="$HOME/.rvm/gems/ruby-3.3.0:$HOME/.rvm/gems/ruby-3.2.2@global"

# Personal stuff
[ -x "$(command -v starship)" ] && eval "$(starship init zsh)";
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
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


