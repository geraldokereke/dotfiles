local map = vim.keymap.set

map("n", "<leader>uo", function()
  require("config.colors").apply("oxocarbon")
end, { desc = "Colorscheme Oxocarbon" })

map("n", "<leader>uv", function()
  require("config.colors").apply("vague")
end, { desc = "Colorscheme Vague" })

map("n", "<leader>ur", function()
  require("config.colors").apply("rose-pine")
end, { desc = "Colorscheme Rose Pine" })
