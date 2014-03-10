# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="caseyscarborough"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export GOPATH=$HOME/gopath
export MYSQL_HOME=/usr/local/mysql
export RVM=/Users/Casey/.rvm
export LEJOS_NXT_JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_37-b06-434.jdk/
export VAGRANT_DEFAULT_PROVIDER=parallels
Contents/Home

export PATH=$PATH:/usr/local/bin/lejos/bin:/usr/local/bin/rubinius/bin:/usr/local/bin/mongodb/bin:$RVM/gems/ruby-2.0.0-p247/bin:$RVM/gems/ruby-2.0.0-p247@global/bin:$RVM/rubies/ruby-2.0.0-p247/bin:$RVM/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:$GOPATH:$GOPATH/bin:$MYSQL_HOME/bin


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Casey/.gvm/bin/gvm-init.sh" ]] && source "/Users/Casey/.gvm/bin/gvm-init.sh"
