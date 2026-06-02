return {
  -- Breadcrumbs in the winbar (file › class › function)
  {
    "Bekaboo/dropbar.nvim",
    event = { "BufReadPost", "BufNewFile", "BufEnter" },
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },
    opts = {
      bar = {
        sources = function(_, _)
          local sources = require("dropbar.sources")
          return {
            sources.path,
            {
              get_symbols = function(buf, _, callback)
                if vim.bo[buf].ft == "markdown" then
                  return sources.markdown.get_symbols(buf, _, callback)
                end
                return sources.lsp.get_symbols(buf, _, callback)
              end,
            },
          }
        end,
      },
    },
    keys = {
      {
        "<leader>;",
        function()
          require("dropbar.api").pick()
        end,
        desc = "Pick Breadcrumb Symbol",
      },
      {
        "[;",
        function()
          require("dropbar.api").goto_context_start()
        end,
        desc = "Breadcrumb Start",
      },
      {
        "];",
        function()
          require("dropbar.api").select_next_context()
        end,
        desc = "Breadcrumb Next",
      },
    },
  },

  -- Rainbow brackets / parentheses
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" },
    main = "rainbow-delimiters.setup",
    opts = {
      strategy = {
        [""] = "rainbow-delimiters.strategy.global",
        vim = "rainbow-delimiters.strategy.local",
      },
    },
  },

  -- Minimap (code overview on the side) — "neomap"
  {
    "Isrothy/neominimap.nvim",
    version = "v3.*",
    lazy = false,
    keys = {
      { "<leader>nm", "<cmd>Neominimap Toggle<cr>", desc = "Toggle Minimap" },
      { "<leader>nr", "<cmd>Neominimap Refresh<cr>", desc = "Refresh Minimap" },
    },
    init = function()
      vim.opt.wrap = false
      vim.opt.sidescrolloff = 36
      vim.g.neominimap = vim.g.neominimap or {}
      vim.g.neominimap.auto_enable = true
    end,
  },
}
