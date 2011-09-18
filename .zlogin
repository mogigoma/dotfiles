session=$(hostname -s)

# Ensure we're not inside a tmux session already.
if [ -n "$TMUX" ]; then
    return
fi

# Ensure tmux is installed.
which tmux 1>/dev/null 2>&1
if [ $? -ne 0 ]; then
    return
fi

# Ensure that the tmux server is running.
tmux -u start-server 1>/dev/null 2>&1

# Try to connect to this hostname's session, if existing.
tmux -u attach -t $session
if [ $? -eq 0 ]; then
    return
fi

# Create a new session for this hostname.
source $HOME/.tmux/$session
