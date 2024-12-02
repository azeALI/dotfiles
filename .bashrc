# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias la='lsd -a'
alias cfi='sudo cpupower frequency-info'
alias cfs='sudo cpupower frequency-set'
alias jj='java -jar'
alias vim='nvim'
alias aaa='sudo systemctl start disable'

export LS_COLORS="$(/home/ali/programs/vivid-v0.10.0-x86_64-unknown-linux-gnu/vivid generate gruvbox-dark-soft)"
export PATH=$PATH:/home/ali/.spicetify
export PATH=$PATH:/home/ali/programs/althea
export PATH=$PATH:/home/ali/services/python-ddcci
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
export PATH=$PATH:/home/ali/services

eval "$(starship init bash)"

