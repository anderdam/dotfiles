# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

##################################
############# PROMPT #############
##################################

#PROMPT='%F{8}$%f '
#PROMPT='%F{243}%1~ %f%F{White}%f  '
PROMPT='%F{#888888}%1~%f %F{White}%f  '

##################################
############# BÁSICO #############
##################################

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto      # update automatically without asking
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(azure aws docker docker-compose docker-machine dotenv dnf git history kubectl mongocli nmap pip pipenv poetry poetry-env postgres qrcode redis-cli ssh-agent thefuck timer transfer ufw web-search)
source $ZSH/oh-my-zsh.sh

##################################
############# ALIAS ##############
##################################

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias rm='rm -r'
alias cp='cp -r'
alias zshcnf="vim ~/.zshrc"
alias zshup="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias env="cd /home/anderdam/env"
alias hadoop="cd /home/anderdam/env/hadoop"
alias kittycnf="vim /home/anderdam/.config/kitty/kitty.conf"
alias tar='tar -zxvf'
alias vi='nvim'
alias vim='nvim'
alias unrar='unrar x'
alias fetch='clear && neofetch'
alias init.vim='vim .config/nvim/init.vim'


# Exports
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-21.0.0.0.35-1.rolling.fc38.x86_64"
export BW_SESSION=NcRKU8Im40P/tNv/HAtQbSApkrRJJVVcVjS/JpBdYoj/zoa5jjGlEydQ34EooQ/I4njhBz2A9yasyLI6QL+pMw==
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"
export HADOOP_HOME=$HOME/env/hadoop/
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
#export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export HDFS_NAMENODE_USER=anderdam
export HDFS_DATANODE_USER=anderdam
export HDFS_SECONDARYNAMENODE_USER=anderdam
export YARN_RESOURCEMANAGER_USER=anderdam
export YARN_NODEMANAGER_USER=anderdam

# Vim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##################################
############# COLORS #############
##################################

#LS_COLORS='rs=0:di=1;97:fi=1;90';
LS_COLORS='rs=0:di=1;94:fi=1;37:ln=1;34'
export LS_COLORS
