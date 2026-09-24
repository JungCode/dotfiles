# pspg dotfiles

My custom theme for [pspg](https://github.com/okbob/pspg), a pager for psql/pgcli output.

## What's inside

- `themes/myterm.conf` — custom color style named `myterm`

## Install

```bash
git clone git@github.com:JungCode/pspg-dotfile.git ~/dotfiles/pspg
ln -s ~/dotfiles/pspg ~/.config/pspg
```

Then reference the style wherever pspg is invoked, e.g. in `~/.psqlrc`:

```
\setenv PAGER 'pspg --custom-style=myterm --no-mouse -X'
```
