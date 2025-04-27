local wezterm = require("wezterm")
local appearance = require("appearance")
local tabline = require("tabline")
local launcher = require("launcher")
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.term = 'wezterm'
config.launch_menu = launcher.menu


appearance.apply(config)
tabline.apply(config)

return config
