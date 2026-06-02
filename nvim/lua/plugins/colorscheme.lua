return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("config.colors").apply()
      end,
    },
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
}
