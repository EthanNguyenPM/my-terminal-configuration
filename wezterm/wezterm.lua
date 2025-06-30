--
-- ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗
-- ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
-- ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║
-- ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║
-- ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
--  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
-- A GPU-accelerated cross-platform terminal emulator
-- https://wezfurlong.org/wezterm/

local dark_opacity = 0.65
local light_opacity = 0.90

local wallpapers_glob = os.getenv("HOME")
	.. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/My-obsidian/03 - Resources/Macos/Wallpapers Macos/**"

local b = require("utils/background")
local h = require("utils/helpers")
local w = require("utils/wallpaper")

local wezterm = require("wezterm")
local mux = wezterm.mux

---@type Config
---@diagnostic disable: missing-fields
local config = {
	background = {
		w.get_wallpaper(),
		b.get_background(dark_opacity, light_opacity),
	},

	font_size = 20,

	-- line_height = 1.1,

	font = wezterm.font_with_fallback({ "JetBrains Mono" }),

	color_scheme = "nord",

	window_padding = {
		left = 100,
		right = 100,
		top = 50,
		bottom = 50,
	},

	set_environment_variables = {
		-- BAT_THEME = h.is_dark() and "Catppuccin-mocha" or "Catppuccin-latte",
		LC_ALL = "en_US.UTF-8",
		-- TODO: audit what other variables are needed
	},

	-- general options
	adjust_window_size_when_changing_font_size = true,
	-- initial_rows = 20,
	initial_cols = 100,
	debug_key_events = false,
	enable_tab_bar = true,
	window_close_confirmation = "NeverPrompt",
	default_prog = { "/bin/zsh", "-l" },
}

-- wezterm.on("gui-startup", function()
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window()
-- 	-- window:gui_window()
-- end)
wezterm.on("gui-startup", function(cmd)
	local screen = wezterm.gui.screens().active
	local ratio = 0.7
	local width, height = screen.width * ratio, screen.height * ratio
	local tab, pane, window = wezterm.mux.spawn_window({
		position = {
			x = (screen.width - width) / 2,
			y = (screen.height - height) / 2,
			origin = "ActiveScreen",
		},
	})
	-- window:gui_window():maximize()
	window:gui_window():set_inner_size(width, height)
end)

return config
