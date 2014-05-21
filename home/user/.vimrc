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
	highlight pythonNumber ctermfg=red cterm=bold
	highlight pythonBuiltin ctermfg=cyan cterm=bold
	highlight pythonExceptions ctermfg=red cterm=bold
"	highlight pythonSpaceError
"	highlight pythonDoctest
"	highlight pythonDoctestValue

	syn keyword pythonBool False True None
	syn keyword pythonSelf self
	highlight pythonBool ctermfg=black cterm=bold
	highlight pythonSelf ctermfg=magenta cterm=bold

endfunction

autocmd FileType python :call PythonFile()

function PHPFile()

"	highlight phpConstant
"	highlight phpCoreConstant
	highlight phpComment ctermfg=yellow cterm=none
"	highlight phpDocTags
"	highlight phpDocCustomTags
	highlight phpException ctermfg=red cterm=bold
	highlight phpBoolean ctermfg=black cterm=bold
"	highlight phpStorageClass
"	highlight phpSCKeyword
"	highlight phpFCKeyword
"	highlight phpStructure
	highlight phpStringSingle ctermfg=green cterm=none
	highlight phpStringDouble ctermfg=green cterm=none
"	highlight phpBacktick
	highlight phpNumber ctermfg=red cterm=bold
	highlight phpFloat ctermfg=red cterm=bold
	highlight phpMethods ctermfg=cyan cterm=bold
	highlight phpFunctions ctermfg=cyan cterm=bold
"	highlight phpBaselib
	highlight phpRepeat ctermfg=magenta cterm=bold
	highlight phpConditional ctermfg=magenta cterm=bold
"	highlight phpLabel
	highlight phpStatement ctermfg=red cterm=bold
	highlight phpKeyword ctermfg=magenta cterm=bold
"	highlight phpType
"	highlight phpInclude
	highlight phpDefine ctermfg=magenta cterm=bold
"	highlight phpBackslashSequences
"	highlight phpBackslashDoubleQuote
"	highlight phpBackslashSingleQuote
"	highlight phpParent
"	highlight phpBrackets
"	highlight phpIdentifierConst
"	highlight phpParentError
"	highlight phpOctalError
"	highlight phpInterpSimpleError
"	highlight phpInterpBogusDollarCurley
"	highlight phpInterpDollarCurly1
"	highlight phpInterpDollarCurly2
"	highlight phpInterpSimpleBracketsInner
"	highlight phpInterpSimpleCurly
"	highlight phpInterpVarname
"	highlight phpTodo
"	highlight phpDocTodo
"	highlight phpMemberSelector
"	highlight phpIntVar
"	highlight phpEnvVar
	highlight phpOperator ctermfg=red cterm=bold
	highlight phpVarSelector ctermfg=blue cterm=none
"	highlight phpRelation
	highlight phpIdentifier ctermfg=blue cterm=none
	highlight phpIdentifierSimply ctermfg=blue cterm=bold

endfunction

autocmd FileType php :call PHPFile()
