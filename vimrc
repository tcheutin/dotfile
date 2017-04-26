" pathogen {{{
execute pathogen#infect()
" }}}


" colors {{{
colorscheme badwolf	" awesome colorscheme
syntax enable		" enable syntax processing
" }}}

" spaces & tabs {{{
set tabstop=4		" number of visual spaces per tab
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tab are spaces
" }}}

" ui config {{{
set number		    " show line number
set showcmd		    " show command in bottom bar
set cursorline		" highligh current line
filetype indent on  " load filetype-specific file indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
set splitbelow      " split below"
set splitright      " split right"
" }}

" searching {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
nnoremap <leader><space> :nohlsearch<CR>    
                    " turn off search highlight
" }}}

" folding {{{
set foldenable      " enable folding
set foldlevelstart=10
                    "  open most folds by default
set foldnestmax=10  " 10 nested fold max
nnoremap <space> za " space open/closes folds
set foldmethod=indent
                    " fold base on ident level
" }}}

" movement {{{
" move vertically by visual ligne
nnoremap j gj
nnoremap k gk
" move beginning/end of line
nnoremap B ^
nnoremap E $
" ^/$ dosen't do anyhing
nnoremap $ <nop>
nnoremap ^ <nop>
" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" shortcuts {{{
" leader shortcuts
inoremap jk <esc>   " jk is escape
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession<CR>
" open ag.vim
" nnoremap <leader>a :Ack <= does not seem to be working
" }}}

"augroup configgroup
""    autocmd!
""    autocmd VimEnter * highlight clear SignColumn
""    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
""            \:call <SID>StripTrailingWhitespaces()
""    autocmd FileType java setlocal noexpandtab
""    autocmd FileType java setlocal list
""    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
""    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
""    autocmd FileType php setlocal expandtab
""    autocmd FileType php setlocal list
""    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
""    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
""    autocmd FileType ruby setlocal tabstop=2
""    autocmd FileType ruby setlocal shiftwidth=2
""    autocmd FileType ruby setlocal softtabstop=2
""    autocmd FileType ruby setlocal commentstring=#\ %s
""    autocmd FileType python setlocal commentstring=#\ %s
""    autocmd BufEnter *.cls setlocal filetype=java
""    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
""    autocmd BufEnter Makefile setlocal noexpandtab
""    autocmd BufEnter *.sh setlocal tabstop=2
""    autocmd BufEnter *.sh setlocal shiftwidth=2
""    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
