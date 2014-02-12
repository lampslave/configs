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

" set colorcolumn=80
highlight ColorColumn ctermbg=lightgray

filetype on
autocmd FileType python setlocal expandtab | setlocal colorcolumn=80
