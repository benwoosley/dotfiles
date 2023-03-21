vim.cmd([[
colo catppuccin
set termguicolors
syntax enable
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=none
]])

require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
})
