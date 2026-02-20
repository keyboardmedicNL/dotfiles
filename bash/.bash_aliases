# here is your favourite prompt incase you want to insert that somewhere: 
#
# blue prompt:
# PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;208m\]\A\[\e[0;1m\]:\[\e[38;5;39m\]\u\[\e[0m\]:\[\e[38;5;39;1m\]\H\[\e[39m\]:\[\e[0;38;5;105m\]\w\[\e[0m\] \[\e[91m\]${PS1_CMD1}\[\e[0m\]:\\$ '
# orange prompt:
# PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;208m\]\A\[\e[0m\]:\[\e[38;5;208;1m\]\u\[\e[0m\]:\[\e[38;5;208;1m\]\H\[\e[0m\]:\[\e[38;5;166m\]\w\[\e[0m\] \[\e[91m\]${PS1_CMD1}\[\e[0m\]:\\$ '
#
# purple promt:
# PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;208m\]\A\[\e[0m\]:\[\e[38;5;99;1m\]\u\[\e[0m\]:\[\e[38;5;99;1m\]\H\[\e[0m\]:\[\e[38;5;171m\]\w\[\e[0m\] \[\e[91m\]${PS1_CMD1}\[\e[0m\]:\\$ '
#
# green prompt:
# PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;208m\]\A\[\e[0m\]:\[\e[92;1m\]\u\[\e[0m\]:\[\e[92;1m\]\H\[\e[0m\]:\[\e[38;5;34m\]\w\[\e[0m\] \[\e[91m\]${PS1_CMD1}\[\e[0m\]:\\$ '

#checks wether to us vim or nvim:
#sneaky non alias to ignore case for tab completion:
bind -s 'set completion-ignore-case on'

#sneaky non alias to turn off capslock
setxkbmap -option ctrl:nocaps


function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi
    builtin cd "${new_directory}" && ls -a
}

function z() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi
    __zoxide_z "${new_directory}" && ls -a
} 

function zi() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi
    __zoxide_zi "${new_directory}" && ls -a
}

function unlock_ssh() {
    if [ ! -S ~/.ssh/ssh_auth_sock ]; then
      eval `ssh-agent`
      ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
    fi
    export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
    ssh-add -l ~/.ssh/medickeyssh > /dev/null || ssh-add ~/.ssh/medickeyssh
}

alias unlockssh='unlock_ssh'

#ls aliases
alias ll='ls -alh --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias ls='ls --color'

# logs and reporting
alias report="batcat  /var/report.txt"
alias editreport="vim /var/report.txt"
alias authlog='journalctl _COMM=sudo --no-pager | grep -iE "failed|authentication failure|incorrect password" -m 10| batcat '
alias reports='authlog && report'

# editing configs
alias bashconf='"vim" ~/.bashrc'
alias i3conf='"vim" ~/.config/i3/config'
alias i3statusconf='"vim" ~/.config/i3status/config'
alias aliasconf='"vim" ~/.bash_aliases'
alias nvimconf='"vim" ~/.config/nvim/init.lua'
alias vimconf='"vim" ~/.vimrc'
alias bashrc='source ~/.bashrc'
alias tmuxconf='"vim" ~/.tmux.conf'

#timers
alias fftimer='echo "Closing firefox in 1 hour" && sleep 3600 && pkill firefox'
alias sleeptimer='echo "System going to sleep in 1 hour" && sleep 3600 && suspend'
alias shutdowntimer='echo "System shutting down in 1 hour" && sleep 3600 && poweroff'

alias pizza='pomo 35m'
alias fries='pomo 15m'
alias burger='pomo 10m'

#ssh and wol 
alias buzzer4='ssh -X pi@192.168.192.20'
alias rover='ssh -X keyboardmedic@192.168.192.10'
alias shed='ssh -X keyboardmedic@192.168.192.11'
alias container='ssh -X keyboardmedic@192.168.178.212'
alias wakerover='wakeonlan 24:4B:FE:4A:27:26'
alias waketruenas='wakeonlan 00:25:90:A9:67:89'

#program shortcuts
alias vlci='vlc -I ncurses'
alias notes='"vim" ~/Desktop/desktop_docs/Notes'
alias update='sudo apt update && sudo apt upgrade'
alias code='codium .'
alias vscode='code'
alias todo='"vim" ~/Desktop/desktop_docs/Notes/TODO.md'
alias size='du -h --max-depth=1 | sort -h --reverse'

alias c='clear'
alias t='tmux a || tmux'
alias r='ranger'
alias x='exit'
alias q='exit'
alias l='i3lock'

#systemctl
alias suspend='systemctl suspend'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'

#yt-dlp
alias yt-dlp-playlist480='yt-dlp -f "best[height<=480]" --download-archive archive.txt --no-overwrites'
alias yt-dlp-480='yt-dlp -f "best[height<=480]"'

alias weather='curl wttr.in'

alias syncmusicrover='rsync --delete -rivht --modify-window=1 pi@192.168.192.20:/mnt/extdrive/Spectre/@videos/music/music/ ~/Music'
