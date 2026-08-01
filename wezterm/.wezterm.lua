-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- Window settings
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1
wezterm.on("gui-startup", function(cmd)
	local screen = wezterm.gui.screens().main
	local ratio = 0.8
	local width, height = screen.width * ratio, screen.height * ratio
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {
		position = { x = (screen.width - width) / 2.1, y = (screen.height - height) / 2.3 },
	})
	-- window:gui_window():maximize()
	window:gui_window():set_inner_size(width, height)
end)

-- Font settings
config.font = wezterm.font("JetBrains Mono")
config.font_size = 16.0

-- Keybinds
config.keys = {
    {
        key = 'n',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ToggleFullScreen
    }
}

-- Finally, return the configuration to wezterm:
return config
