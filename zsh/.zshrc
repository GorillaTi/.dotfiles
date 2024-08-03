# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
  aliases
  history
  tmux
  fzf
  git
  nmap
  python
  rsync
  docker
  docker-compose
  sudo
  cp
  dnf
  zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=es_ES.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# --------------------------------------------------------------------------------------------
# Custon Aliases
# --------------------------------------------------------------------------------------------
# Configuration bat
if [ -f /usr/bin/bat ] ;
then
  alias cat="/usr/bin/bat"
  alias catn="/usr/bin/cat"
  alias catnl="/usr/bin/cat --paging=never"
else
  alias cat="/usr/bin/cat"
fi

# Configuration lsd
if [ -f /usr/bin/lsd ] ;
then
  alias ls='lsd --group-dirs=first'
	# New
  alias l='ls -lh'
  alias la='ls -a'
  alias lla='ls -lha'
  alias lt='ls --tree'

	# Old
	#alias l='lsd -l --group-dirs=first'
	#alias ll='lsd -lh --group-dirs=first'
	#alias la='lsd -ha --group-dirs=first'
	#alias lla='lsd -lha --group-dirs=first'
fi

# Alias de configuracio de servicios
# --------------------------------------------------------------------------------------------
# Alias configuracion ZSH
alias zsh-config='vim ~/.zshrc'
alias zsh-reload='source ~/.zshrc'

# Alias configuracion Powerlevel10k
alias p10k-config='vim ~/.p10k.zsh'
alias p10k-reload='source ~/.p10k.zsh'

# Alias de Configuracion de Vim con Packer
if [[ -f ~/*.vimrc ]]; then
  alias vim-config='vim ~/.vimrc'
  if [[ -d ~/.vim ]]; then
    alias vim-config-plug='vim ~/.vim/plugins.vim'
    alias vim-config-plug-conf='vim ~/.vim/plugins-config.vim'
    alias vim-config-map='vim ~/.vim/maps.vim'
  fi
fi

# Alias de configuracion de ssh
if [[ -d ~/.ssh/config.d ]]; then
  alias ssh-config='vim ~/.ssh/config.d/'
else
  alias ssh-config='vim ~/.ssh/config'
fi

# Cleaning DNS cache
alias dns-clear='sudo systemd-resolve --flush-cache'

# Alias nvim with vim
if [ -f /opt/nvim-linux64/bin/nvim ] ;
then
  alias vim='/usr/bin/nvim'
  alias vimn='/usr/bin/vim' 
else
  alias vim='/usr/bin/vim' 
fi

# Alias update fonts
alias update-fonts='sudo fc-cache -fv' 

# Tmux
alias tmux-sesion='tmux new -t tmux1'
alias tmux-conf='vim ~/.tmux.conf.local'

# Custom Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select

fpath+=~/.zfunc

# --------------------------------------------------------------------------------------------
# Functions
# --------------------------------------------------------------------------------------------
# Add this to easily extract compressed files, use extract <filename> to extract 
extract () {
  if [ -f $1  ] ; then
    case $1 in
    	*.tar.bz2)	    tar xvjf $1    ;;
      *.tar.gz)       tar xvzf $1    ;;
      *.tar.xz)       tar xf $1      ;;
      *.bz2)          bunzip2 $1     ;;
      *.rar)          unrar x $1     ;;
      *.gz)           gunzip $1      ;;
      *.tar)          tar xvf $1     ;;
      *.tbz2)         tar xvjf $1    ;;
      *.tgz)          tar xvzf $1    ;;
      *.zip)          unzip $1       ;;
      *.Z)            uncompress $1  ;;
      *.7z)           7z x $1        ;;
      *.zpaq)         zpaq x $1      ;;
      *)              echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!";
  fi
}

# Clear RAM and SWAP
cache-clear() {
  su -l
  /bin/free -m
  /bin/sync
  /sbin/sysctl -w vm.drop_caches=3
  /bin/sleep 3
  /sbin/sysctl -w vm.drop_caches=0
  /bin/free -m
}

# Add this for update Operating System
# alias os-upgrade='sudo apt update && sudo apt dist-upgrade -y'
# or 'sudo dnf upgrade'
#os-update () {
#  declare -a os_distro=( "Fedora" "RedHat" "CenOS" "AlmaLinux" "RockiLinux" "Debian" "Ubuntu" );
#  for i in ${os_distro[@]}; do
#    local distro=$(cat /etc/*-release | grep "NAME" | grep -o -m1 -i "$i");
#    if [ ! -z "$distro" ]; then
#      os=$distro;
#      version=$(grep VERSION_ID /etc/os-release | awk -F '=' '{print $2}' | tr -d '"')
#      echo "Sistema Operativo indetificado como: $os $version" 
#      echo "Actualizando $os .........."
#      break;
#    fi
#  done
#  case $os in
#    Fedora | RedHat | CenOS | AlmaLinux | RockiLinux)
#      sudo dnf upgrade -y; 
#    ;;
#    Debian | Ubuntu)
#      sudo apt upgrade;
#      sudo apt dist-upgrade -y;
#    ;;
#    *)
#      echo "Sistema operativo desconocido";
#      exit;
#    ;;
#  esac
#  echo "Actualizando paquetes flatpack"
#  sudo flatpak update -y;
#  echo "Actualizando paquetes Snap"
#  sudo snap refresh --list;
#  sudo snap refresh;
#  echo "Su sistema operartivo $os $version esta actualizado"
#}

# Add this for upgrade Operating System Fedora
#os-upgrade () {
#  declare -a os_distro=( "Fedora" "RedHat" "CenOS" "AlmaLinux" "RockiLinux" "Debian" "Ubuntu" );
#  for i in ${os_distro[@]}; do
#    local distro=$(cat /etc/*-release | grep "NAME" | grep -o -m1 -i "$i");
#    if [ ! -z "$distro" ]; then
#      os=$distro;
#      version=$(grep VERSION_ID /etc/os-release | awk -F '=' '{print $2}' | tr -d '"')
#      echo "Sistema Operativo indetificado como: $os $version" 
#      break;
#    fi
#  done
#  case $os in
#    Fedora | RedHat | CenOS | AlmaLinux | RockiLinux)
#      echo "Actualizacion de Version de $os"
#
#      echo "Limpiando Cache de Paquetes"
#      sudo dnf clean all
#      echo "Actualizando Paquetes"
#      sudo dnf upgrade --refresh
#      echo "Descargando los paquetes de actualizacion"
#      sudo dnf system-upgrade download --releasever=40 --allowerasing
#      echo "Reiniciando el sistema"
#      sudo dnf system-upgrade reboot
#    ;;
#    Debian | Ubuntu)
#      echo "Sistema opreativo $os NO soportado para Actualizacion de version"
#    ;;
#    *)
#      echo "Sistema operativo desconocido";
#      exit;
#    ;;
#  esac
#}

# Inclusion de directorios
# Inclusion de .local/bin al PATH
export PATH="$HOME/.local/bin:$PATH"
# Inclusion neovim /opt
export PATH="$PATH:/opt/nvim-linux64/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# To customize prompt, run `zsh-config` or edit ~/.zshrc
function precmd() {
  if [[ $1 == "vim" || $1 == "nano" ]]; then
    source ~/.zshrc
  fi
}
