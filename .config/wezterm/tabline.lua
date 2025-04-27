local wezterm = require('wezterm')

local tabline = wezterm.plugin.require('https://github.com/michaelbrusegard/tabline.wez')
local module = {}

function module.apply(config)
    tabline.setup({
        options = {
            --theme = 'Fahrenheit'
            --theme = 'Floraverse'
            --theme = "Oxocarbon Dark (Gogh)"
            theme = "Monokai Remastered"
            --theme = "Srcery (Gogh)"
            --theme = "Wez"
            --theme = "HaX0R_R3D"
            --theme = 'Brewer (dark) (terminal.sexy)'
            --theme = 'hund (terminal.sexy)'
            --theme = 'Isotope (base16)'
            --theme = 'Rasi (terminal.sexy)'
            -- theme = 'Scarlet Protocol'
        }
    })
    tabline.apply_to_config(config)
    config.window_decorations = 'NONE'
    config.tab_bar_at_bottom = true
end

return module
