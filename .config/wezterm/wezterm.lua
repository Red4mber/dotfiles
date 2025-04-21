local wezterm = require("wezterm")
local appearance = require("appearance")
local tabline = require("tabline")
local config = wezterm.config_builder()

config.automatically_reload_config = true

appearance.apply(config)
tabline.apply(config)

return config
