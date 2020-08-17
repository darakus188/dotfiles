# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
WINEPREFIX="/home/mbunt/.wine64"
WINEARCH="win64"
export WINEARCH
export WINEPREFIX

PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/go/bin"
export PATH

