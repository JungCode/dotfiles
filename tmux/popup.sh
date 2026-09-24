#!/usr/bin/env bash
# Create the popup session if it doesn't exist yet
tmux has-session -t popup 2>/dev/null || tmux new-session -d -s popup

# Transparent background — inherits WezTerm background opacity
tmux set-option -t popup window-style        'bg=default'
tmux set-option -t popup window-active-style 'bg=default'

# Hide the status bar inside the popup (it's a floating terminal, not a session view)
tmux set-option -t popup status off

tmux attach-session -t popup
