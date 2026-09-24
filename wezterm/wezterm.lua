local wezterm = require("wezterm")

wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	local gui = window:gui_window()

	-- Choose your preferred size
	local width = 2600
	local height = 1600

	-- Perfect centering for 2704x1756 macOS display
	local center_x = math.floor((2704 - width) / 2)
	local center_y = math.floor((1756 - height) / 2)

	gui:set_inner_size(width, height)
	gui:set_position(center_x, center_y)
end)

return {
	-- PERFORMANCE TWEAKS -------------------------------------------------
	front_end = "WebGpu",
	max_fps = 120,
	animation_fps = 120,
	enable_scroll_bar = false,

	-- FONT ---------------------------------------------------------------
	-- font = wezterm.font("Mononoki Nerd Font"),
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	font_size = 13.0,

	-- WINDOW -------------------------------------------------------------
	enable_tab_bar = false, -- remove the tab bar completely
	window_decorations = "RESIZE", -- removes title bar, tabs, buttons

	window_background_opacity = 0.8,
	macos_window_background_blur = 20,

	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},

	-- COLORS -------------------------------------------------------------
	color_scheme = "Tokyo Night",
	-- color_scheme = "Brewer (dark) (terminal.sexy)",
	-- color_scheme = "Catppuccin Mocha",
	-- color_scheme = "Breath Silverfox (Gogh)",

	-- colors = {
	-- 	tab_bar = {
	-- 		background = "#1e1e2e",
	-- 		active_tab = {
	-- 			bg_color = "#89b4fa",
	-- 			fg_color = "#1e1e2e",
	-- 		},
	-- 	},
	-- },

	-- CURSOR -------------------------------------------------------------
	default_cursor_style = "BlinkingBar",

	adjust_window_size_when_changing_font_size = false,
}
