# Kyle Buzsaki
# kbuzsaki@ucsd.edu

################################################################################
# Terminal Config
################################################################################

# sets terminal to have color
export CLICOLOR=1
# sets terminal prompt
export PS1="\u:\w$ "
# sets the terminal title to the working directory
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

HISTSIZE=100000               # keep more history entries
HISTFILESIZE=100000           # allow a larger history file
shopt -s histappend           # append to the history file, don't overwrite it
HISTCONTROL=ignoreboth        # ignore duplicate lines and lines starting with space
HISTIGNORE='ls:bg:fg:history' # ignore exact matches of these commands        

################################################################################
# Path Config
################################################################################

# sets brew utils to be used over native ones
export PATH=/usr/local/bin:$PATH

# sets directory prefix for mono
export MONO_GAC_PREFIX="/usr/local"

# sets home directory environment variables
# use java 7 by default because play is bad
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home'
#export JAVA_HOME=$(/usr/libexec/java_home)

export ANT_HOME=/usr/local/apache-ant-1.8.4
export PLAY_HOME=/usr/local/play-1.2.4

# when we switch to play 1.3...
#export ANT_HOME=/usr/local/Cellar/ant/1.9.4/
#export PLAY_HOME=/usr/local/play1

# concatenates the home directories to the path
export PATH=$PATH:$ANT_HOME:$JAVA_HOME:$PLAY_HOME

export GOPATH=$HOME/dev/go

################################################################################
# Environment Variables Config
################################################################################

# ip for moebius-reactor
ucsd=128.54.183.156
home=24.6.177.127
moebius=Kyle@$ucsd

kserver=kyle@kbuzsaki.com

agcari=autograder@auto-grader.com
agucsd=autograder@autograder.ucsd.edu

################################################################################
# Sourcing out to Other Files
################################################################################

# runs aliases from .bash_aliases
if [ -r ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# adds git autocomplete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# OPAM configuration
. /Users/kbuzsaki/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

