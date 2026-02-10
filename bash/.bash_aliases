# here is your favourite prompt incase you want to insert that somewhere: 
#    PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;208m\]\A\[\e[0m\]:\[\e[38;5;39;1m\]\u\[\e[0m\]:\[\e[38;5;39;1m\]\H\[\e[0m\]:\[\e[38;5;105m\]\w\[\e[0m\] \[\e[91m\]${PS1_CMD1}\[\e[0m\]:\\$ '

#sneaky non alias to ignore case for tab completion:
bind -s 'set completion-ignore-case on'

#ls aliases
alias ll='ls -al --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias ls='ls --color'

# logs and reporting
alias report="cat  /var/report.txt"
alias editreport="nvim /var/report.txt"
alias authlog='journalctl _COMM=sudo --no-pager | grep -iE "failed|authentication failure|incorrect password" -m 10| cat '
alias freshclamlog='journalctl _COMM=freshclam --no-pager -n 10 | cat '
alias reports='authlog && freshclamlog && report'

# editing configs
alias bashconf='nvim ~/.bashrc'
alias i3conf='nvim ~/.config/i3/config'
alias i3statusconf='nvim ~/.config/i3status/config'
alias aliasconf='nvim ~/.bash_aliases'
alias nvimconf='nvim ~/.config/nvim/init.lua'
alias vimconf='nvim ~/.vimrc'
alias bashrc='source ~/.bashrc'
alias tmuxconf='nvim ~/.tmux.conf'

#timers
alias fftimer='echo "Closing firefox in 1 hour" && sleep 3600 && pkill firefox'
alias sleeptimer='echo "System going to sleep in 1 hour" && sleep 3600 && suspend'
alias shutdowntimer='echo "System shutting down in 1 hour" && sleep 3600 && poweroff'

alias pizza='pomo 35m'
alias fries='pomo 15m'
alias burger='pomo 10m'

#ssh and wol 
alias buzzer4='ssh -X -C pi@192.168.192.20'
alias rover='ssh -X -C keyboardmedic@192.168.192.10'
alias shed='ssh -X -C keyboardmedic@192.168.192.11'
alias wakerover='wakeonlan 24:4B:FE:4A:27:26'
alias waketruenas='wakeonlan 00:25:90:A9:67:89'

#program shortcuts
alias vlci='vlc -I ncurses'
alias notes='nvim ~/Desktop/desktop_docs/Notes'
alias update='sudo apt update && sudo apt upgrade'
alias code='codium .'
alias vscode='code'
alias todo='nvim ~/Desktop/desktop_docs/Notes/TODO.md'

alias c='clear'
alias t='tmux a || tmux'
alias r='ranger'
alias x='exit'
alias q='exit'
alias l='i3lock'

#systemctl
alias status='sudo systemctl status'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'
alias suspend='systemctl suspend'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'

#replace default programs
alias vim='nvim'
alias cat='batcat'
alias cd='z'
