local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<Leader><Space>", ":set hlsearch!<CR>", opts)

-- Find files using Telescope command-line sugar.
vim.keymap.set("n", "<Leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<CMD>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fh", "<CMD>Telescope help_tags<CR>")

-- F5 Runner
vim.cmd([[
cnoreabbrev w' w
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!clang % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!clangd -std=c++11 -O2 -Wall % -o %<"
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
exec "!open -a \"Firefox.app\" %.html &"
elseif &filetype == 'tex'
exec "!pdflatex %; open %<.pdf"
endif
endfunc

]])

-- barbar
-- ALT has to be changed!! see <C-v><option-keyToSet>
-- Move to previous/next
map("n", "<M-,>", "<Cmd>BufferPrevious<CR>", opts) -- <OPT-.>
map("n", "<M-.>", "<Cmd>BufferNext<CR>", opts) -- <OPT-,>
-- Re-order to previous/next
map("n", "<M-lt>", "<Cmd>BufferMovePrevious<CR>", opts) -- <OPT-<>
map("n", "<M->>", "<Cmd>BufferMoveNext<CR>", opts) -- < OPT- > >
-- Goto buffer in position...
map("n", "<M-1>", "<Cmd>BufferGoto 1<CR>", opts) -- <OPT-1>
map("n", "<M-2>", "<Cmd>BufferGoto 2<CR>", opts) -- <OPT-2>
map("n", "<M-3>", "<Cmd>BufferGoto 3<CR>", opts) -- <OPT-3>
map("n", "<M-4>", "<Cmd>BufferGoto 4<CR>", opts) -- <OPT-4>
map("n", "<M-5>", "<Cmd>BufferGoto 5<CR>", opts) -- <OPT-5>
map("n", "<M-6>", "<Cmd>BufferGoto 6<CR>", opts) -- <OPT-6>
map("n", "<M-7>", "<Cmd>BufferGoto 7<CR>", opts) -- <OPT-7>
map("n", "<M-8>", "<Cmd>BufferGoto 8<CR>", opts) -- <OPT-8>
map("n", "<M-9>", "<Cmd>BufferGoto 9<CR>", opts) -- <OPT-9>
map("n", "<M-0>", "<Cmd>BufferLast<CR>", opts) -- <OPT-0>
-- Pin/unpin buffer
map("n", "<M-p>", "<Cmd>BufferPin<CR>", opts) -- <OPT-P>
-- Close buffer
map("n", "<M-w>", "<Cmd>BufferClose<CR>", opts) -- <OPT-W>
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- NVIM Tree
vim.g.nvim_tree_side = "left" --left by default
vim.g.nvim_tree_width = 30 --30 by default, can be width_in_columns or 'width_in_percent%'
vim.g.nvim_tree_ignore = { ".git", "node_modules", ".cache" } --empty by default
vim.g.nvim_tree_auto_open = 1 --0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1 --0 by default, closes the tree when it's the last window
vim.g.nvim_tree_auto_ignore_ft = { "startify", "dashboard" } --empty by default, don't auto open tree on specific filetypes.
vim.g.nvim_tree_quit_on_open = 1 --0 by default, closes the tree when you open a file
vim.g.nvim_tree_follow = 1 --0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1 --0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_hide_dotfiles = 1 --0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_git_hl = 1 --0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_root_folder_modifier = ":~" --This is the default. See :help filename-modifiers for more options

-- NVIM Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
