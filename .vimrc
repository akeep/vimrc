" set words to be consistent with Scheme mode
" ... if you can't beat 'em, join 'em
set iskeyword=33,35-39,42-58,60-90,94,95,97-122,126,_

" set rules for filename completion
set wildmode=longest,list,full

" allow :e to move away from modified file
set hidden

" attempt to turn off automatic propagation of comment
" characters after an insert-mode newline or open command
set formatoptions=cql

" don't collapse parts of the document
set nofoldenable

" turn off vi compatibility mode
set nocompatible

" turn off file type plugin
filetype plugin off

" turn on syntax highlighting
syntax on

" turn on auto-indent
" set autoindent
" set smartindent

" visual bell instead of audio
set novisualbell
set noerrorbells
set vb t_vb=

" show matching brackets
set showmatch

" highlight as you search
set nohlsearch

" incremental search
set noincsearch

" set our tabstops
set tabstop=8

" expand tabs
set expandtab

" set our soft tab stop
set softtabstop=2
set shiftwidth=2

" only valid in hacked version of vim
set yankleavecursor=1

" special case various file types
autocmd FileType make set noexpandtab
autocmd FileType c set cindent

" LaTeX plugin recommentations (that aren't already in the file)
let g:tex_flavor='latex'
" autocmd FileType tex set textwidth=78
" autocmd FileType tex set iskeyword+=:
autocmd FileType tex setlocal spell spelllang=en_us

" set a good text mode color scheme.
colorscheme desert

" turn on the ruler
set ruler

" Key mappings

" ^X^V<char> to insert special <char> (insert mode)
inoremap <c-x><c-v> <c-v>
" ^S preceding word in \scheme{} (insert mode)
inoremap <c-s> }<Esc>bi\scheme{<Esc>%a
" ^X^S preceding s-expression in \scheme{} (insert mode)
inoremap <c-x><c-s> }<Esc>h%i\scheme{<Esc>%a
" ^V preceding word in \var{} (insert mode)
inoremap <c-v> }<Esc>bi\var{<Esc>%a
" ^S wrap following word in \scheme{} (command mode)
noremap <c-s> i\scheme{<Esc>l/[ .,;]<CR>i}<Esc>
" ^V wrap following word in \var{} (command mode)
noremap <c-v> i\var{<Esc>l/[ .,;]<CR>i}<Esc>
" ^X^S wrap following s-expression in \scheme{} (command mode)
noremap <c-x><c-s> i\scheme{<Esc>l%a}<Esc>
" ^O insert \schemedisplay
noremap <c-o> 0i\schemedisplay<CR><Esc>
" ^P insert \endschemedisplay
noremap <c-p> o\endschemedisplay<Esc>

" ] reformats the current sentence
noremap ] gw))
" [ reformats the current paragraph
noremap [ gw}}
