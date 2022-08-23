vim.cmd([[
if (has("termguicolors"))
  set termguicolors
endif
hi normal guibg=NONE
syntax enable
colorscheme nightfox
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]])
