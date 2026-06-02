local M = {}

---@type table<string, boolean>
M.schemes = {
  oxocarbon = true,
  vague = true,
  ["rose-pine"] = true,
}

-- Default: "oxocarbon" | "vague" | "rose-pine"
vim.g.colorscheme = vim.g.colorscheme or "vague"

-- Set true to use a transparent editor background (terminal wallpaper shows through)
vim.g.colors_transparent = vim.g.colors_transparent == nil and true or vim.g.colors_transparent

local function transparent()
  if not vim.g.colors_transparent then
    return
  end
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

---@param name? string
function M.apply(name)
  name = name or vim.g.colorscheme
  if not M.schemes[name] then
    vim.notify("Unknown colorscheme: " .. name, vim.log.levels.ERROR)
    return
  end

  vim.g.colorscheme = name

  if name == "oxocarbon" then
    vim.o.background = "dark"
    vim.cmd.colorscheme("oxocarbon")
  elseif name == "vague" then
    require("vague").setup({
      transparent = vim.g.colors_transparent,
    })
    vim.cmd.colorscheme("vague")
  elseif name == "rose-pine" then
    require("rose-pine").setup({
      disable_background = vim.g.colors_transparent,
      styles = { italic = false },
    })
    vim.cmd.colorscheme("rose-pine-moon")
  end

  transparent()
end

return M
