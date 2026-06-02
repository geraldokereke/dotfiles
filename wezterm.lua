-- .wezterm.lua
-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "GruvboxDarkHard"

-- config.font = wezterm.font("Operator Mono SSm Lig")
-- config.font = wezterm.font("Hack")
config.font = wezterm.font("Zed Mono Extended")

-- config.font = wezterm.font("FiraMono Nerd Font Mono")

-- and finally, return the configuration to wezterm
return config
