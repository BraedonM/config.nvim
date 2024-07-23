" From: https://speakerdeck.com/cocopon/creating-your-lovely-color-scheme
" Support only 256 or full colors
if !has('gui_running') || &t_Co < 256
	finish
endif

" Set background color
set background=dark

" Reset existing highlights and colors
hi clear
if exists('syntax_on')
	syntax reset
endif

" Name of the colorscheme
let g:colors_name = 'braeco'

" Set the terminal colors
hi! ColorColumn ctermbg=236
hi! CursorColumn ctermbg=236
