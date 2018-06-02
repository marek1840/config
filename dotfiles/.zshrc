# Path to your oh-my-zsh installation.
export ZSH=/home/marek/.oh-my-zsh
# export LD_PRELOAD=/usr/lib/jvm/java-8-openjdk/jre/lib/amd64/libjsig.so
export MAVEN_OPTS="-Xms1024m -Xmx2048m"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

EDITOR=vim
DEFAULT_USER="marek"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

HIST_IGNORE_SPACE="true"

ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[globbing]='none'

# Words cannot express how fucking sweet this is
REPORTTIME=5

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
plugins=(git sudo common-aliases mvn python sbt scala sublime zsh-syntax-highlighting docker)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
PATH=$PATH:~/.cabal/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# eval $(thefuck --alias)

git_update(){
    pushd /workspace/compact/clean-222
    git pull origin release-2.2.2
    popd

    pushd /workspace/compact/clean-31
    git pull origin release-3.1
    popd

    pushd /workspace/compact/clean-master
    git pull origin master
    popd
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh
alias manjaro-update="sudo pacman -Syuu"

alias ll="ls -lh"
alias dr="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias cloudera="cd ~/work/cloudera"
alias compact="~/work/compact"
alias open="xdg-open"
alias activator="/opt/scala-activator/activator"
alias pip="sudo pip2"

alias retro="cool-retro-term"


alias start-work="~/configuration/compact/start-work"
alias ssh-devel="ssh marek.zarnowski@devel02"
alias ssh-cloudera="ssh marek.zarnowski@cloudera01"
alias ssh-svn="ssh marek.zarnowski@svn"
alias ssh-remember-passphrase="ssh-add /home/marek/.ssh/id_rsa"

alias mdx-clear="find . -regex '.*cdimc[^/]*/target$' -exec rm -rf {} \;"
alias mdx-fetch="git fetch origin release-2.1.4:release-2.1.4 release-2.2.1:release-2.2.1 release-2.2.2:release-2.2.2 master:master"