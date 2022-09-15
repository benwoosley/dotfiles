require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- autopairs
	use("jiangmiao/auto-pairs")
	-- wakatime
	use("wakatime/vim-wakatime")
	-- nvim/r
	use("jalvesaq/Nvim-R")
	-- cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	-- snippy
	use("dcampos/nvim-snippy")
	use("honza/vim-snippets")
	use("dcampos/cmp-snippy")
	-- latex / markdown
	use("xuhdev/vim-latex-live-preview")
	use("davidgranstrom/nvim-markdown-preview")
	--colors
	use("EdenEast/nightfox.nvim")
	use({
		"phha/zenburn.nvim",
		config = function()
			require("zenburn").setup()
		end,
	})
	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- formatting / linting
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
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
