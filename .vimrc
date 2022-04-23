syntax enable

let &titlestring = @%
set title
set noerrorbells
set vb t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nu
set number relativenumber
set nowrap
set smartcase
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
colo default

map <F1> :call CompileRunGcc()<CR>
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
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!open -a \"Brave Browser.app\" % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!open -a \"Brave Browser.app\" %.html &"
endif
endfunc

" set nocompatible
" filetype off
