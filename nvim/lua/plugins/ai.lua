return {
  {
    "saghen/blink.compat",
    version = "2.*",
    opts = {},
  },
  {
    "ThePrimeagen/99",
    dependencies = { "saghen/blink.compat" },
    keys = {
      { "<leader>9s", function() require("99").search() end, desc = "99 Search", mode = { "n", "x" } },
      { "<leader>9v", function() require("99").visual() end, desc = "99 Visual", mode = "v" },
      { "<leader>9x", function() require("99").stop_all_requests() end, desc = "99 Stop" },
    },
    opts = {
      completion = { source = "blink" },
      tmp_dir = "./.99",
    },
    config = function(_, opts)
      local _99 = require("99")
      opts.provider = _99.Providers.ClaudeCodeProvider
      _99.setup(opts)
    end,
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts_extend = { "sources.compat" },
    opts = {
      sources = {
        compat = { "99" },
      },
    },
  },
}
