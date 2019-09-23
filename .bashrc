# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
#PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:/usr/local/go/bin:$HOME/go/bin"
#export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias crmud="cd /home/mbunt/rust/red-shale"
alias gocode="cd /home/mbunt/go/src/github.com/darakus188"
alias ls=exa
alias ll='exa -al'
alias grep=rg

# Git
source /home/mbunt/script/git-prompt.sh

# Prompt
PS1="[\u@\h \W]\$(__git_ps1)$ "
export PS1
