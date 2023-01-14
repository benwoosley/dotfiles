require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	-- cmp
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
		},
	})
	-- theme
	use("bluz71/vim-nightfly-colors")
	-- css
	use({
		"mrshmllow/document-color.nvim",
		config = function()
			require("document-color").setup({
				-- Default options
				mode = "background", -- "background" | "foreground" | "single"
			})
		end,
	})
	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- copilot
	use("github/copilot.vim")
	-- formatting / diagnostics
	use("jose-elias-alvarez/null-ls.nvim")
	-- git
	use("rhysd/git-messenger.vim")
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	-- treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- mason
	use({ "williamboman/mason.nvim", requires = { { "williamboman/mason-lspconfig.nvim" } } })
	-- status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
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
