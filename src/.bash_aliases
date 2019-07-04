### default
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

### gruvcube
# dotfile aliases
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias customrc="vim ~/.customrc && source ~/.bashrc"
alias secretsrc="vim ~/.secrets && source ~/.bashrc"
alias aliases="vim ~/.bash_aliases && source ~/.bashrc"
alias vimrc="vim ~/.vimrc && vim +PluginClean +qall && vim +PluginInstall +qall"
alias tmuxconf="vim ~/.tmux.conf && tmux source-file ~/.tmux.conf"

### custom {|-- add custom aliases below -->)
# pi (example)
#alias pi="ssh pi@raspberrypi.local"

