# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/crow/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="crow"
#ZSH_THEME="ys"
#ZSH_THEME="amuse"	#####!!!
#ZSH_THEME="geoffgarside" ##!

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  sudo
  zsh-syntax-highlighting
  pip
)

proxy () {
    export http_proxy="http://xxxxx:xxxxxxx@127.0.0.1:8080"
    export https_proxy="https://xxxxxx:xxxxxxx@127.0.0.1:8080"
    export no_proxy='127.0.0.1,localhost'
    echo "HTTP Proxy on"
}


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors  ]; then
		test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
		alias ls='ls --color=auto'
		#alias dir='dir --color=auto'
		#alias vdir='vdir --color=auto'

		alias grep='grep --color=auto'
		alias fgrep='fgrep --color=auto'
		alias egrep='egrep --color=auto'
fi

#------------------------------myself----------------------------
#export ORACLE_HOME=/opt/oracle/instantclient_18_3
#export TNS_ADMIN=$ORACLE_HOME/network/admin



export CUDA_HOME=/usr/local/cuda

export CPLUS_INCLUDE_PATH=/usr/include/python2.7
export PYTHON_LIBRARIES=/usr/lib/python2.7/config-x86_64-linux-gnu/libpython2.7.so


export TF_CPP_MIN_LOG_LEVEL=2


export PKG_CONFIG=/usr/lib/x86_64-linux-gnu/pkgconfig
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH

alias xy='cmatrix -b'

alias -s html ='vim'
alias -s py='vim'
alias -s cpp='vim'
alias -s js='vim'
alias -s c='vim'
alias -s txt='vim'
alias -s java='vim'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'
alias -s zip='unzip'


export WORKON_HOME=~/Envs 
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages' 
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source  /usr/local/bin/virtualenvwrapper.sh

export pip_proxy=' --proxy=http://xxxx:xxxxxxxx@127.0.0.1:8080'
export pip_inside=" -i https://pypi.douban.com/simple "



#alias pip='sudo -H pip --proxy=$hp '

#ulitmit -S -c unlimited
ulimit -c unlimited

