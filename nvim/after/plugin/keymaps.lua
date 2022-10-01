vim.api.nvim_set_keymap("n", "<Leader><Space>", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Find files using Telescope command-line sugar.
vim.keymap.set("n", "<Leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<CMD>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fh", "<CMD>Telescope help_tags<CR>")

vim.cmd([[
cnoreabbrev w' w
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python3 %"
elseif &filetype == 'html'
exec "!open -a \"Safari.app\" % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!open -a \"Safari.app\" %.html &"
endif
endfunc

]])
