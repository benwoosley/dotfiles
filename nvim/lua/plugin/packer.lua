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
	use("EdenEast/nightfox.nvim")
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    })
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.sumneko_lua.setup({})
		end,
	})
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})
	if packer_bootstrap then
		require("packer").sync()
	end
end)
