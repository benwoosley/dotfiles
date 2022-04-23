require("packer").startup(function(use) use("wbthomason/packer.nvim")
    use("Chiel92/vim-autoformat")
    use("jiangmiao/auto-pairs")
    use("wakatime/vim-wakatime")
    use("neovim/nvim-lspconfig")
    use("williamboman/nvim-lsp-installer")
    use("jalvesaq/Nvim-R")
    use("hrsh7th/nvim-cmp")
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('dcampos/nvim-snippy')
    use('honza/vim-snippets')
    use('dcampos/cmp-snippy')
    use('xuhdev/vim-latex-live-preview')
    use('joshdick/onedark.vim')
    use{'nvim-treesitter/nvim-treesitter',run = ":TSUpdate",}
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
-- basics
vim.opt.filetype = "on"
vim.opt.title = true
vim.opt.errorbells = false
-- color scheme
vim.cmd([[
set termguicolors
colorscheme onedark
hi clear StatusLine
]])
-- yank copies to clipboard
vim.opt.clipboard = "unnamed"
-- numbers
vim.opt.nu = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
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
require "plugin.treesitter"
require "plugin.lspconfig"
require "plugin.snippy"
require "plugin.cmp"
vim.cmd([[
hi normal guibg=NONE
syntax enable
set encoding=utf-8
au BufWrite * :Autoformat
let g:livepreview_previewer = 'open -a Preview'
cnoreabbrev w' w
]])
