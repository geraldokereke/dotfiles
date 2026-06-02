--- Snacks explorer layout: centered floating file tree.
return {
  preview = false,
  layout = {
    position = "float",
    backdrop = 60,
    width = 0.4,
    min_width = 40,
    max_width = 80,
    height = 0.85,
    border = true,
    box = "vertical",
    {
      win = "input",
      height = 1,
      border = "bottom",
      title = "{title} {live} {flags}",
      title_pos = "center",
    },
    { win = "list", border = "none" },
  },
}
