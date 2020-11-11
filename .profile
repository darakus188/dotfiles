
export PATH="$HOME/.cargo/bin:$PATH"

if [ "$DESKTOP_SESSION" = "sway" ]; then
    export $(gnome-keyring-daemon --start)
    export GTK_THEME="Adwaita:dark"
fi
