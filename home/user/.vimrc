set encoding=utf-8
set fileencodings=utf-8,cp1251

set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

set autoindent
set cindent

set hlsearch
set ignorecase

set listchars=tab:\→\ ,trail:.,extends:\⇄\,precedes:\⇄\,nbsp:.
set list
highlight SpecialKey ctermfg=lightgray

set number
highlight LineNr ctermfg=black ctermbg=lightgray

highlight ColorColumn ctermbg=lightgray

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
	highlight pythonDecorator ctermfg=red cterm=none
	highlight pythonFunction ctermfg=red cterm=bold
	highlight pythonComment ctermfg=yellow cterm=none
"	highlight pythonTodo
	highlight pythonString ctermfg=green cterm=none
	highlight pythonRawString ctermfg=green cterm=none
"	highlight pythonEscape
	highlight pythonNumber ctermfg=blue cterm=bold
	highlight pythonBuiltin ctermfg=cyan cterm=bold
	highlight pythonExceptions ctermfg=blue cterm=bold
"	highlight pythonSpaceError
"	highlight pythonDoctest
"	highlight pythonDoctestValue

	syn keyword pythonBool False True None
	syn keyword pythonSelf self
	highlight pythonBool ctermfg=blue cterm=bold
	highlight pythonSelf ctermfg=magenta cterm=bold

endfunction

autocmd FileType python :call PythonFile()