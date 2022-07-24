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
	use("sainnhe/gruvbox-material")
	use("xuhdev/vim-latex-live-preview")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("Chiel92/vim-autoformat")
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
	if packer_bootstrap then
		require("packer").sync()
	end
end)
