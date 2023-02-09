vim.cmd([[
colo catppuccin
set termguicolors
syntax enable
highlight Normal ctermbg=NONE guibg=NONE
]])

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
})
