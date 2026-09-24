# Dotfiles

My terminal and editor configuration, kept in one repository.

| Directory | Contents |
| --- | --- |
| [`kitty/`](kitty/) | Kitty terminal configuration and color themes |
| [`nvim/`](nvim/) | Neovim configuration based on LazyVim |
| [`pspg/`](pspg/) | Custom pspg color theme |
| [`theme/`](theme/) | Script to switch Kitty, tmux, and Neovim themes together |
| [`tmux/`](tmux/) | tmux configuration, themes, and plugins |
| [`wezterm/`](wezterm/) | WezTerm configuration |
| [`yazi/`](yazi/) | Yazi configuration and Catppuccin flavor |

Clone the repository to `~/dotfiles`, then link the configurations you use into their expected locations under `~/.config`. tmux also uses `~/.tmux.conf`; see the README in each directory for more details.

To change the shared theme, run `~/dotfiles/theme/switch.sh nord`. Available themes are `current`, `nord`, `catppuccin`, and `rosepine`.
