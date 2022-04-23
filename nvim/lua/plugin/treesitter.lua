local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end
configs.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "phpdoc", "verilog", "swift", "elixir", "ruby"},
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = false, disable = { "yaml" } },
}
