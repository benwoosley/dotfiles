local wezterm = require("wezterm")

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "zenbones_dark"
	else
		return "zenbones_light"
	end
end

return {
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	font = wezterm.font("Iosevka Nerd Font"),
	font_size = 21.0,
	enable_tab_bar = false,
}
