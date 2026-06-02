# Neovim

[LazyVim](https://www.lazyvim.org/) config with snacks explorer, three colorschemes, and [99](https://github.com/ThePrimeagen/99) (Claude Code).

## Setup

```bash
git clone <your-repo> ~/.config/nvim
nvim   # Lazy installs plugins on first launch
```

Requires: Neovim ≥ 0.11, [ripgrep](https://github.com/BurntSushi/ripgrep), [fd](https://github.com/sharkdp/fd), a Nerd Font, and `claude` CLI for 99.

## Keymaps

| Key | Action |
|-----|--------|
| `<leader>e` | File tree (right sidebar) |
| `<leader>ef` | File tree (floating) |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>uo/uv/ur` | Oxocarbon / Vague / Rose Pine |
| `<leader>;` | Pick breadcrumb symbol (dropbar) |
| `<leader>nm` | Toggle minimap |
| `<leader>9s` | 99 search |
| `<leader>9v` | 99 visual (visual mode) |
| `<leader>9x` | 99 stop |
| `zz` / `zZ` | Zen mode |
| `<S-h>` / `<S-l>` | Previous / next buffer |

## Colorschemes

Default: **vague**. Edit `vim.g.colorscheme` in `lua/config/colors.lua`.

Set `vim.g.colors_transparent = false` for solid backgrounds.
