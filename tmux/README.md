# tmux dotfiles

My personal tmux config. Catppuccin (mocha) theme, vim-style pane navigation,
mouse support, and session persistence via tmux-resurrect/tmux-continuum.

## What's inside

- `tmux.conf` — main config (keybindings, options, plugin list)
- `popup.sh` — helper script used by the popup scratch-session binding
- `plugins/catppuccin` — vendored catppuccin theme (TPM-managed)

## Requirements

- [tmux](https://github.com/tmux/tmux) >= 3.2
- [TPM](https://github.com/tmux-plugins/tpm) installed at `~/.tmux/plugins/tpm`
- `zsh` as default shell (set via `default-shell` in the config; change if needed)

## Install

```bash
git clone git@github.com:JungCode/tmux-dotfile.git ~/dotfiles/tmux
ln -s ~/dotfiles/tmux ~/.config/tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

Then start tmux and install plugins with `prefix + I` (TPM).

## Notable keybindings

| Key | Action |
|---|---|
| `prefix + h/j/k/l` | move between panes (vim-style) |
| `prefix + H/J/K/L` (repeatable) | resize pane |
| `prefix + "` / `%` | split pane, keeping current path |
| `prefix + g` | toggle a popup scratch session |
| `prefix + R` | reload config |
| `prefix + C-s` / `C-r` | save / restore session (tmux-resurrect) |
