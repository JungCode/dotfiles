#!/usr/bin/env bash
# Switch kitty + tmux + nvim between themes in one shot.
#
#   current     tokyonight (nvim) + tokyo-night (kitty) + catppuccin (tmux)
#   nord        nordic     (nvim) + nord           (kitty) + nord       (tmux)
#   catppuccin  catppuccin (nvim) + catppuccin     (kitty) + catppuccin (tmux)
#   rosepine    rose-pine  (nvim) + rose-pine      (kitty) + rose-pine  (tmux)
#
# Usage: theme/switch.sh current|nord|catppuccin|rosepine
# Uses `case` rather than associative arrays so it still runs on the bash
# 3.2 that ships with macOS.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME="${1:-}"

case "$THEME" in
  current)
    KITTY_CONF="tokyo-night.conf"
    TMUX_CONF="catppuccin.conf"
    NVIM_SCHEME="tokyonight"
    ;;
  nord)
    KITTY_CONF="nord.conf"
    TMUX_CONF="nord.conf"
    NVIM_SCHEME="nordic"
    ;;
  catppuccin)
    KITTY_CONF="catppuccin-mocha.conf"
    TMUX_CONF="catppuccin.conf"
    NVIM_SCHEME="catppuccin"
    ;;
  rosepine)
    KITTY_CONF="rose-pine.conf"
    TMUX_CONF="rose-pine.conf"
    NVIM_SCHEME="rose-pine"
    ;;
  *)
    echo "Usage: $0 current|nord|catppuccin|rosepine" >&2
    exit 1
    ;;
esac

echo "$THEME" > "$DOTFILES/theme/current"

# --- kitty: swap the color include, reload live via remote control ---
ln -sf "$KITTY_CONF" "$DOTFILES/kitty/theme-active.conf"
# kitty appends its own PID to the socket name even with an exact
# `listen_on unix:/tmp/kitty` path, so find whatever's actually there
# instead of hardcoding /tmp/kitty.
KITTY_SOCKET="$(ls -t /tmp/kitty* 2>/dev/null | head -1 || true)"
if [[ -n "$KITTY_SOCKET" ]] && kitty @ --to "unix:$KITTY_SOCKET" ls >/dev/null 2>&1; then
  kitty @ --to "unix:$KITTY_SOCKET" set-colors -a --configured "$DOTFILES/kitty/theme-active.conf"
else
  echo "kitty remote control not reachable -- fully quit and reopen kitty (Cmd+Q, not just close the window) once, then rerun this"
fi

# --- tmux: swap the theme file, reload if a server is running ---
ln -sf "$TMUX_CONF" "$DOTFILES/tmux/theme/active.conf"
if tmux info >/dev/null 2>&1; then
  tmux source-file ~/.tmux.conf
else
  echo "no tmux server running -- next 'tmux' start will pick up $THEME"
fi

# --- nvim: nvim only reads the theme file at startup, so this can't be
# live-reloaded generically -- just tell the user what to run.
echo "nvim: theme file updated. In an open nvim, run:"
echo "  :colorscheme $NVIM_SCHEME"
echo "(new nvim instances pick it up automatically)"

echo "Switched to: $THEME"
