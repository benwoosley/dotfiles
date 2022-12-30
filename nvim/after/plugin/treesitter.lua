local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
configs.setup({
	ensure_installed = "cpp",
	"java",
	"rust",
	"lua",
	sync_install = true,
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = false, disable = { "yaml" } },
})
