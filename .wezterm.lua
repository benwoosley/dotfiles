local wezterm = require("wezterm")

-- local function scheme_for_appearance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "Dark+"
-- 	else
-- 		return "VSCodeLight+ (Gogh)"
-- 	end
-- end

return {
	-- color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	color_scheme = "Catppuccin Mocha",
	colors = {
		background = "black",
	},
	font = wezterm.font("Menlo"),
	font_size = 18.0,
	enable_tab_bar = false,
	window_background_opacity = 0.8,
}
