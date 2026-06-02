return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      {
        "zz",
        function()
          require("zen-mode").setup({
            window = { width = 90 },
          })
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = true
          vim.wo.relativenumber = true
          require("config.colors").apply()
        end,
        desc = "Zen Mode (with line numbers)",
      },
      {
        "zZ",
        function()
          require("zen-mode").setup({
            window = { width = 80 },
          })
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = false
          vim.wo.relativenumber = false
          require("config.colors").apply()
        end,
        desc = "Zen Mode (no line numbers)",
      },
    },
    opts = {
      on_open = function()
        require("config.colors").apply()
      end,
      on_close = function()
        require("config.colors").apply()
      end,
    },
  },
}
