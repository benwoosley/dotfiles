vim.g.mapleader = " "
require("plugin.packer")
require("plugin.set")
require("plugin.colors")
require("lualine").setup({
	options = {
		ignore_focus = { "NvimTree" },
	},
})
