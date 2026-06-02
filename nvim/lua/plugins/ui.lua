local float_explorer = require("config.explorer")

return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>ef",
        function()
          Snacks.explorer({ cwd = LazyVim.root(), layout = float_explorer })
        end,
        desc = "Explorer Float (root dir)",
      },
      {
        "<leader>eF",
        function()
          Snacks.explorer({ layout = float_explorer })
        end,
        desc = "Explorer Float (cwd)",
      },
    },
    opts = {
      bigfile = { enabled = true },
      indent = { enabled = true },
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = ("\n  %s · %s\n"):format(os.date("%A"), os.date("%H:%M")),
          keys = {
            { key = "f", desc = "Find file", action = ":lua Snacks.dashboard.pick('files')" },
            { key = "g", desc = "Find text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { key = "r", desc = "Recent", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
            { key = "l", desc = "Lazy", action = ":Lazy" },
            { key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
      picker = {
        sources = {
          explorer = {
            layout = {
              preset = "sidebar",
              preview = false,
              layout = { position = "right" },
            },
          },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.separator_style = "thin"
      opts.options.always_show_bufferline = true
      opts.options.show_buffer_close_icons = true
      opts.options.show_close_icon = false
      opts.options.diagnostics = "nvim_lsp"
      return opts
    end,
  },
}
