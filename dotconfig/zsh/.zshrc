# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="/root/.oh-my-zsh"
export ZSH="/home/fg/.oh-my-zsh"

export TERM=xterm-256color

export PATH=$PATH:~/.local/bin:~/scripts

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="aussiegeek"
#ZSH_THEME="agnoster"
#ZSH_THEME="bureau"
#ZSH_THEME="candy"
#ZSH_THEME="clean" # no muestra el host
#ZSH_THEME="crunch" # 
#ZSH_THEME="dst" # 
#ZSH_THEME="fino-time" # muy bueno... 
#ZSH_THEME="nanotech" # no muestra host ni usuario...
#ZSH_THEME="pmcgee" # safa...
ZSH_THEME="trapd00r" # gris naranja azul, lindo, sin hora...
#ZSH_THEME="ys" # celeste, verde, amarillo, el que uso siempre...
#ZSH_THEME="robbyrussell" # el que viene por defecto

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ansible docker taskwarrior timewarrior)

source $ZSH/oh-my-zsh.sh

#autocompletar para azure-cli
source '/home/fg/lib/azure-cli/az.completion'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# para que el gpg pida la clave...
GPG_TTY=$(tty)
export GPG_TTY

# activo el agente de ssh 
eval "$(ssh-agent -s)"

# activo direnv...
eval "$(direnv hook zsh)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH="$PATH:~/scripts"

export AZURE_CORE_COLLECT_TELEMETRY=false

# asigno la version global de pyenv
#layout pyenv 3.9.6

export TZ="America/Argentina/Buenos_Aires"

#cargo los alias 
source ~/.alias

#fix home/end
bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[2~'   overwrite-mode     # Linux console, xterm, gnome-terminal
bindkey '\e[3~'   delete-char        # Linux console, xterm, gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal

#carga dinamica de antibody:
# cargo los plugins en antibody...
#antibody bundle < ~/.zsh_plugins.txt
# los uso:
#source <(antibody init)

# carga estatica de antibody:
#primero genero el .sh de un .txt que tenga los plugins
#ejecutando:
# scripts/antibody-static-conf.sh 
# y lo cargo con esto:
source ~/.zsh_plugins.sh

# usando bat con fzf...
#fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'

ssh-add ~/.ssh/"yasabesquien@github"

if [ `pwd` = "/mnt/wsl/docker-desktop-bind-mounts/kali-linux/8a5edab282632443219e051e4ade2d1d5bbc671c781051bf1437897cbdfea0f1/mnt/c/Users/EXO10" ];then
	cd
fi

unsetopt beep
