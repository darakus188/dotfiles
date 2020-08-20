# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias crmud="cd /home/mbunt/rust/red-shale"
alias ls=exa
alias vim=nvim

# Git
source /home/mbunt/script/git-prompt.sh
force_color_prompt=yes

# Prompt
PS1="[\u@\h \W]\$(__git_ps1)$ "
export PS1

#fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
