local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
	sources = {
		-- lua
		formatting.stylua,
		-- python
		formatting.autopep8,
		-- C/C++
		formatting.clang_format.with({
			extra_args = {
				"--style",
				"{TabWidth: 4, IndentWidth: 4, AccessModifierOffset: -4, BreakBeforeBraces: Allman, PointerAlignment: Left, ColumnLimit: 0}",
			},
		}),
		-- latex
		formatting.latexindent,
		diagnostics.chktex,
		-- html
		formatting.prettierd,
	},
	on_attach = function(client, bufnr)
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
