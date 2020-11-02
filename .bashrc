# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls=exa
alias vim=nvim

# Git
source /home/mbunt/script/git-prompt.sh
PS1="[\u@\h \W]\$(__git_ps1)$ "
export PS1

# fzf
[ -f ~/script/fzf.bash ] && source ~/script/fzf.bash
