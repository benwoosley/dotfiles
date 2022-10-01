vim.g.zenbones_compat = 1
vim.cmd([[
if (has("termguicolors"))
  set termguicolors
endif
syntax enable

colorscheme zenbones
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]])
