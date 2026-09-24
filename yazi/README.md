# yazi dotfiles

My personal config for [yazi](https://github.com/sxyazi/yazi), a terminal file manager.
Uses the catppuccin flavor.

## What's inside

- `yazi.toml` — main config
- `theme.toml` — theme overrides
- `package.toml` — installed plugins/flavors (managed by `ya pkg`)
- `flavors/catppuccin` — vendored catppuccin flavor

## Install

```bash
git clone git@github.com:JungCode/yazi-dotfile.git ~/dotfiles/yazi
ln -s ~/dotfiles/yazi ~/.config/yazi
```

Run `ya pkg install` afterwards to make sure plugins/flavors match `package.toml`.
