
local wezterm = require('wezterm')


return {
    menu = {
        {
            label = 'System Ressouces Monitor',
            args = { 'btop' },
        },
        {
            label = 'AUR Package manager.',
            args = { 'paruz' }
        },
        {
            label = 'File exporer TUI',
            args = { 'yazi' }
        },
        {
            label = 'Edit Hyprland configs',
            args = { 'nvim' },
            cwd = '~/.config/hypr/'
        },
        {
            label = 'Edit Neovim configs',
            args = { 'nvim' },
            cwd = '~/.config/nvim/'
        },
        {
            label = 'Edit Wezterm configs',
            args = { 'nvim' },
            cwd = '~/.config/wezterm/'
        },
    }
}


