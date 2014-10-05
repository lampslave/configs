set encoding=utf-8
set fileencodings=utf-8,cp1251

set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

set cindent

set hlsearch
set ignorecase

set listchars=tab:\→\ ,trail:.,extends:\⇄\,precedes:\⇄\,nbsp:.
set list
highlight SpecialKey ctermfg=lightgray

set number
highlight LineNr ctermfg=black ctermbg=lightgray

highlight ColorColumn ctermbg=lightgray
highlight MatchParen ctermbg=brown ctermfg=white cterm=bold
highlight Pmenu ctermbg=lightgray
highlight PmenuSbar ctermbg=lightgray
highlight PmenuSel cterm=bold
highlight PmenuThumb ctermbg=cyan

filetype on
syntax on

function PythonFile()
	setlocal expandtab
	setlocal colorcolumn=80

	highlight pythonStatement ctermfg=blue cterm=bold
	highlight pythonConditional ctermfg=blue cterm=bold
	highlight pythonRepeat ctermfg=blue cterm=bold
	highlight pythonOperator ctermfg=blue cterm=bold
	highlight pythonException ctermfg=blue cterm=bold
	highlight pythonInclude ctermfg=blue cterm=bold
	highlight pythonFunction ctermfg=black cterm=bold
	highlight pythonComment ctermfg=cyan cterm=none
	highlight pythonTodo ctermfg=red cterm=bold
	highlight pythonString ctermfg=green cterm=none
	highlight pythonRawString ctermfg=green cterm=none
	highlight pythonEscape ctermfg=brown cterm=bold
	highlight pythonNumber ctermfg=blue cterm=none
	highlight pythonBuiltin ctermfg=blue cterm=bold
	highlight pythonExceptions ctermfg=black cterm=bold
"	highlight pythonSpaceError
"	highlight pythonDoctest
"	highlight pythonDoctestValue

	syn region pythonDocstring start='\(\'\|\"\)\{3}' end='\(\'\|\"\)\{3}'
	highlight pythonDocstring ctermfg=cyan cterm=none

	syn match pythonDecorator '^@\w*'
	highlight pythonDecorator ctermfg=cyan cterm=bold

	syn keyword pythonSelf self
	highlight pythonSelf ctermfg=magenta cterm=bold
endfunction
autocmd FileType python :call PythonFile()

let g:user_emmet_expandabbr_key = '<Nul>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
