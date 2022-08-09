# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

bindkey '^[[P' delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

setopt nocaseglob
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

source ~/.profile

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=nvim

#custom-aliases
alias ll='ls -al --color=auto'
alias ls='ls --color=auto'
alias vi='nvim'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rcns'
alias search='sudo pacman -Ss'
alias update='sudo pacman -Syu'
alias nz='nvim ~/.zshrc'
alias sz='source ~/.zshrc'
alias off='sudo poweroff now'
alias re='sudo reboot now'
alias nd='nvim ~/.local/src/dwm/config.h'
alias nnd='cd ~/.local/src/dwm'
alias nm='nvim ~/.local/src/dmenu/config.h'
alias nnm='cd ~/.local/src/dmenu'
alias nb='nvim ~/.local/src/dwmblocks/config.h'
alias nnb='cd ~/.local/src/dwmblocks'
alias ns='nvim ~/.local/src/st/config.h'
alias nns='cd ~/.local/src/st'
alias t='cd /var/lib/transmission/Downloads'
alias to='cd /var/lib/transmission/Downloads && lf'
alias s='cd ~/.local/bin/statusbar'
alias ng='sudo nvim /etc/default/grub'
alias sg='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mci='sudo make clean install'
alias b='cd ..'
alias bb='cd ../..'
alias ff='startx'
alias cac='cd ~/.cache'
alias cf='cd ~/.config'
alias lc='cd ~/.local'
alias d='cd ~/Downloads'
alias a='cd ~/Downloads/AppImages && ls -a'
alias acp='advcp -g'
alias listen='netstat -tulpn | grep LISTEN'
alias sshkeys='eval $(ssh-agent -s) && ssh-add ~/.ssh/git ~/.ssh/vps'
alias ls='exa'
alias cat='bat'
alias enc='gpg -c --cipher-algo AES256'
alias dec='gpg -d'
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
