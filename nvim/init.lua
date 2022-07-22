require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("jiangmiao/auto-pairs")
	use("wakatime/vim-wakatime")
	use("jalvesaq/Nvim-R")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("dcampos/nvim-snippy")
	use("honza/vim-snippets")
	use("dcampos/cmp-snippy")
	use("xuhdev/vim-latex-live-preview")
	use("tomasiser/vim-code-dark")
	use("sainnhe/gruvbox-material")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({
		"williamboman/nvim-lsp-installer",
		{
			"neovim/nvim-lspconfig",
			config = function()
				require("nvim-lsp-installer").setup({})
				local lspconfig = require("lspconfig")
				lspconfig.sumneko_lua.setup({})
			end,
		},
	})
	use("Chiel92/vim-autoformat")
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
colorscheme gruvbox-material
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

-- plugin customizations
require("plugin.treesitter")
require("plugin.lspconfig")
require("plugin.snippy")
require("plugin.cmp")

-- random
vim.cmd([[
hi normal guibg=NONE
syntax enable
set encoding=utf-8
let g:livepreview_previewer = 'open -a Preview'
cnoreabbrev w' w
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
let g:formatters_lua = ['stylua']
au BufWrite * :Autoformat
]])
