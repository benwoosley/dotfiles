-- basics
vim.opt.filetype = "on"
vim.opt.title = true
vim.opt.errorbells = false

-- yank copies to clipboard
vim.opt.clipboard = "unnamed"

-- numbers
vim.opt.nu = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

-- indentation
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- undo / swap
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false

-- python
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

-- autoformat
vim.g.autoformat_remove_trailingspaces = 0
vim.g.autoformat_retab = 0
vim.g.autoformat_autoindent = 0

vim.opt.encoding = "utf-8"
vim.g.livepreview_previewer = "open -a Preview"

-- for checkhealth optioal
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- format on save
vim.cmd([[au BufWrite * :Autoformat]])

-- stop continuing comments on new line
vim.cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])
