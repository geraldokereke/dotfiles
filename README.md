# dotfiles

Personal configs for fish, ghostty, neovim (LazyVim), tmux, zellij, and wezterm.

## Install (new machine)

```bash
git clone git@github.com:geraldokereke/dotfiles.git ~/dotfiles
ln -sfn ~/dotfiles/fish    ~/.config/fish
ln -sfn ~/dotfiles/ghostty ~/.config/ghostty
ln -sfn ~/dotfiles/nvim    ~/.config/nvim
ln -sfn ~/dotfiles/tmux    ~/.config/tmux
ln -sfn ~/dotfiles/zellij  ~/.config/zellij
ln -sfn ~/dotfiles/wezterm.lua ~/.wezterm.lua
```

## Sync changes from live config into repo

```bash
rsync -a --exclude '.git' ~/.config/nvim/ ~/dotfiles/nvim/
rsync -a ~/.config/fish/ ~/dotfiles/fish/
# ... repeat for other dirs, then git add -A && git commit && git push
```
