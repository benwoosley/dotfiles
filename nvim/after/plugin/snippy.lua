require("snippy").setup({
	mappings = {
		is = {
			["<C-n>"] = "expand_or_advance",
			["<C-p>"] = "previous",
		},
		nx = {
			["<leader>x"] = "cut_text",
		},
	},
})
