require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- autopairs
	use("jiangmiao/auto-pairs")
	-- cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	-- snippy
	-- use("dcampos/nvim-snippy")
	-- use("honza/vim-snippets")
	-- use("dcampos/cmp-snippy")
	-- theme
	use("rebelot/kanagawa.nvim")
	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- copilot
	use("github/copilot.vim")
	-- formatting / linting
	use({ "jose-elias-alvarez/null-ls.nvim" })
	-- git
	use("rhysd/git-messenger.vim")
	-- treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- mason
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- lspconfig
	use({
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.sumneko_lua.setup({})
		end,
	})
	if packer_bootstrap then
		require("packer").sync()
	end
end)
