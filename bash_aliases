# Aliases for .bashrc

alias df='df -h'
alias du='du -h'

alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# use ansi escape codes, dump to screen if the file is small enough
alias less='less --quit-if-one-screen --no-init --RAW-CONTROL-CHARS' 

alias ls='ls -h'                              # classify files in colour
alias ll='ls -l'                              # long list
alias la='ls -a'                              # all but . and ..
alias l='ls -CF'                              #

alias ssh='ssh -X'

# colorize diffing and have them page with less
function diff_color() { colordiff -u $* | less; }
alias diff='diff_color'
function wdiff_color() { \wdiff $* | colordiff | less; }
alias wdiff='wdiff_color'

alias tailf='tail -f'

alias vi='vim'
alias python='python3'
alias pip='pip3'
alias python2='\python'
alias pip2='\pip'

alias ocaml='rlwrap ocaml'

alias play13='/usr/local/play1/play'

# Mac specific
#
# use MacVim's vim instead of system vim
alias vim='/usr/local/Cellar/macvim/7.4-73/MacVim.app/Contents/MacOS/Vim'
alias finder='open'
alias pdflatex='/usr/texbin/pdflatex'

alias localip='ifconfig | grep netmask | tail -n 1 | xargs | cut -f 2 -d" "'

eval "$(thefuck --alias)"

