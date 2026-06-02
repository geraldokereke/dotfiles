-- Minimal UI tweaks on top of LazyVim defaults
vim.g.snacks_animate = false
vim.g.autoformat = true

local opt = vim.opt

opt.colorcolumn = ""
opt.hlsearch = false
opt.incsearch = true

opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.list = true
opt.listchars = { tab = "  ", trail = "·", nbsp = " " }
opt.fillchars = {
  foldopen = " ",
  foldclose = " ",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
