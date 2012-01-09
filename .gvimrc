" set words to be consistent with Scheme mode
" ... if you can't beat 'em, join 'em
" strangely,have to set it here as well as in ~/.gvimrc
set iskeyword=33,35-39,42-58,60-90,94,95,97-122,126,_

" Set the color scheme to ir_black (looks nice in Gvim, but bad on terminal)
colorscheme ir_black

" Set the guioptions
set guioptions=ac

" Set a nice guifont
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11

" Turn on transparency
" set transp=8
set novisualbell
set noerrorbells
set vb t_vb=

" stop the cursor from blinking
set guicursor+=a:blinkon0

" cause yank to pull into the system clipboard
set clipboard=unnamed
