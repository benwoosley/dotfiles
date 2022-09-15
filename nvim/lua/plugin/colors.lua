vim.cmd([[
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]])
