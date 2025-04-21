local wezterm = require('wezterm')
local module = {}


function module.apply(config)
    --config.color_scheme = 'Oxocarbon Dark (Gogh)'
    --config.color_scheme = 'Hacktober'
    --config.color_scheme = 'Isotope (base16)'
    config.color_scheme = 'Floraverse'
    --config.color_scheme = 'Vesper (terminal.sexy)'

    -- backend
    config.max_fps = 120
    --config.front_end = 'WebGpu'
    --config.webgpu_power_preference = 'HighPerformance'

    -- cursor
    config.animation_fps = 120
    config.cursor_blink_ease_in = 'EaseOut'
    config.cursor_blink_ease_out = 'EaseOut'
    config.default_cursor_style = 'BlinkingBlock'
    config.cursor_blink_rate = 650

    -- tab bar
    --config.enable_tab_bar = true
    --config.hide_tab_bar_if_only_one_tab = true
    --config.use_fancy_tab_bar = true
    --config.tab_max_width = 25
    --config.show_tab_index_in_tab_bar = false
    --config.switch_to_last_active_tab_when_closing_tab = true

    -- opacity
    config.window_background_opacity = 0.95
    config.inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.8,
    }
end

return module
