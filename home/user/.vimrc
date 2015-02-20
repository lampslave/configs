set encoding=utf-8
set fileencodings=utf-8,cp1251

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set mouse=a

set autoindent
set smartindent

set hlsearch
set ignorecase

filetype on
syntax on

let html_no_rendering=1


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

highlight Todo ctermbg=none ctermfg=red cterm=bold


highlight pythonStatement ctermfg=blue cterm=bold
highlight pythonConditional ctermfg=blue cterm=bold
highlight pythonRepeat ctermfg=blue cterm=bold
highlight pythonOperator ctermfg=blue cterm=bold
highlight pythonException ctermfg=blue cterm=bold
highlight pythonInclude ctermfg=blue cterm=bold
highlight pythonFunction ctermfg=black cterm=bold
highlight pythonComment ctermfg=cyan cterm=none
"highlight pythonTodo
highlight pythonString ctermfg=green cterm=none
highlight pythonRawString ctermfg=green cterm=none
highlight pythonEscape ctermfg=brown cterm=bold
highlight pythonNumber ctermfg=blue cterm=none
highlight pythonBuiltin ctermfg=blue cterm=bold
highlight pythonExceptions ctermfg=black cterm=bold
"highlight pythonSpaceError
"highlight pythonDoctest
"highlight pythonDoctestValue

" Custom
highlight pythonDocstring ctermfg=cyan cterm=none
highlight pythonDecorator ctermfg=cyan cterm=bold
highlight pythonSelf ctermfg=magenta cterm=bold


highlight htmlTag ctermfg=magenta cterm=none
highlight htmlEndTag ctermfg=magenta cterm=none
highlight htmlArg ctermfg=green cterm=none
highlight htmlTagName ctermfg=magenta cterm=none
highlight htmlSpecialTagName ctermfg=magenta cterm=none
"highlight htmlValue
"highlight htmlSpecialChar
"highlight htmlPreStmt
"highlight htmlPreError
"highlight htmlPreProc
"highlight htmlPreAttr
"highlight htmlPreProcAttrName
"highlight htmlPreProcAttrError
"highlight htmlSpecial
"highlight htmlSpecialChar
highlight htmlString ctermfg=blue cterm=none
"highlight htmlStatement
highlight htmlComment ctermfg=cyan cterm=none
highlight htmlCommentPart ctermfg=cyan cterm=none
"highlight htmlValue
"highlight htmlCommentError
"highlight htmlTagError
"highlight htmlEvent
"highlight htmlError
"highlight javaScript
"highlight javaScriptExpression
"highlight htmlCssStyleComment
"highlight htmlCssDefinition


highlight djangoTagBlock ctermfg=black cterm=none
highlight djangoVarBlock ctermfg=black cterm=none
highlight djangoStatement ctermfg=black cterm=bold
"highlight djangoFilter
"highlight djangoArgument
"highlight djangoTagError
"highlight djangoVarError
"highlight djangoError
"highlight djangoComment
"highlight djangoComBlock
"highlight djangoTodo


highlight javaScriptComment ctermfg=cyan cterm=none
highlight javaScriptLineComment ctermfg=cyan cterm=none
"highlight javaScriptCommentTodo
"highlight javaScriptSpecial
highlight javaScriptStringS ctermfg=green cterm=none
highlight javaScriptStringD ctermfg=green cterm=none
"highlight javaScriptCharacter
"highlight javaScriptSpecialCharacter
"highlight javaScriptNumber
highlight javaScriptConditional ctermfg=blue cterm=bold
highlight javaScriptRepeat ctermfg=blue cterm=bold
highlight javaScriptBranch ctermfg=blue cterm=bold
highlight javaScriptOperator ctermfg=blue cterm=bold
"highlight javaScriptType
highlight javaScriptStatement ctermfg=blue cterm=bold
highlight javaScriptFunction ctermfg=blue cterm=bold
"highlight javaScriptBraces
"highlight javaScriptError
"highlight javaScrParenError
highlight javaScriptNull ctermfg=blue cterm=bold
highlight javaScriptBoolean ctermfg=blue cterm=bold
highlight javaScriptRegexpString ctermfg=yellow cterm=bold
highlight javaScriptIdentifier ctermfg=blue cterm=bold
"highlight javaScriptLabel
"highlight javaScriptException
highlight javaScriptMessage ctermfg=black cterm=none
highlight javaScriptGlobal ctermfg=black cterm=none
highlight javaScriptMember ctermfg=black cterm=none
highlight javaScriptDeprecated ctermfg=red cterm=none
"highlight javaScriptReserved
"highlight javaScriptDebug
"highlight javaScriptConstant


highlight cssComment ctermfg=cyan cterm=none
highlight cssTagName ctermfg=green cterm=none
highlight cssDeprecated ctermfg=red cterm=none
highlight cssSelectorOp ctermfg=black cterm=none
highlight cssSelectorOp2 ctermfg=black cterm=none
highlight cssAttrComma ctermfg=black cterm=none
highlight cssPseudoClassId ctermfg=yellow cterm=none
"highlight cssPseudoClassLang Constant
highlight cssValueLength ctermfg=black cterm=none
highlight cssValueInteger ctermfg=black cterm=none
highlight cssValueNumber ctermfg=black cterm=none
highlight cssValueAngle ctermfg=black cterm=none
highlight cssValueTime ctermfg=black cterm=none
highlight cssValueFrequency ctermfg=black cterm=none
highlight cssFunction ctermfg=black cterm=none
highlight cssURL ctermfg=black cterm=none
highlight cssFunctionName ctermfg=black cterm=none
highlight cssFunctionComma ctermfg=black cterm=none
highlight cssColor ctermfg=black cterm=none
highlight cssIdentifier ctermfg=green cterm=none
"highlight cssInclude Include
"highlight cssIncludeKeyword atKeyword
highlight cssImportant ctermfg=red cterm=none
highlight cssBraces ctermfg=black cterm=none
"highlight cssBraceError Error
"highlight cssError Error
"highlight cssUnicodeEscape Special
highlight cssStringQQ ctermfg=green cterm=none
highlight cssStringQ ctermfg=green cterm=none
highlight cssAttributeSelector ctermfg=green cterm=none
"highlight cssMediaType Special
"highlight cssMediaComma Normal
"highlight cssMediaKeyword Statement
"highlight cssPagePseudo PreProc
"highlight cssPageHeaderProp PreProc
"highlight cssKeyFrameSelector Constant
highlight cssFontDescriptor ctermfg=black cterm=bold
highlight cssFontDescriptorFunction ctermfg=black cterm=none
highlight cssUnicodeRange ctermfg=yellow cterm=none
highlight cssClassName ctermfg=green cterm=none
highlight cssProp ctermfg=blue cterm=none
highlight cssAttr ctermfg=black cterm=none
highlight cssUnitDecorators ctermfg=black cterm=none
"highlight cssNoise Noise
highlight atKeyword ctermfg=black cterm=bold


function PythonFile()
    setlocal expandtab
    setlocal colorcolumn=80
    setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with   
    syn region pythonDocstring start="'''" end="'''"
    syn region pythonDocstring start='"""' end='"""'
    syn match pythonDecorator '@[a-zA-Z0-9_]\+'
    syn keyword pythonSelf self cls
endfunction
autocmd FileType python :call PythonFile()


" Identify the syntax highlighting group used at the cursor
" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" Automatically set paste mode when pasting in insert mode
" https://coderwall.com/p/if9mda
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif
  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"
  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction
let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" <Ctrl-l> redraws the screen and removes any search highlighting.
" http://stackoverflow.com/a/99186/2694042
nnoremap <silent> <C-l> :nohl<CR><C-l>
