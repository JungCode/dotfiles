# wezterm dotfiles

My personal config for [WezTerm](https://wezfurlong.org/wezterm/).

## What's inside

- `wezterm.lua` — main config (fonts, colors, keybindings, startup behavior)

## Install

```bash
git clone git@github.com:JungCode/wezterm-dotfile.git ~/dotfiles/wezterm
ln -s ~/dotfiles/wezterm ~/.config/wezterm
```

WezTerm picks up `~/.config/wezterm/wezterm.lua` automatically — no restart config needed
beyond reloading WezTerm (`Cmd/Ctrl + Shift + R` by default).
