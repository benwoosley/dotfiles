local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
configs.setup({
	ensure_installed = "cpp",
	"java",
	"rust",
	sync_install = true,
	ignore_install = { "phpdoc", "verilog", "swift", "elixir", "ruby", "hack", "org", "vala" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = false, disable = { "yaml" } },
})
