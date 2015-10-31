" load pathogen bundles
execute pathogen#infect()
filetype plugin on
filetype indent on
set shell=bash

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <leader>f :CtrlP<CR>
set wildignore+=*/tmp/*
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:SuperTabMappingBackward='<>'

"surround
autocmd FileType eruby let g:surround_{char2nr('=')} = "<%= \r %>"

"snipMate
":imap <leader><tab> <Plug>snipMateBack<Plug>
:imap <C-L> <Plug>snipMateShow

"vim-go
let g:go_disable_autoinstall = 1


"colors
syntax enable
"set term=xterm-256color
set t_Co=256
set background=dark
colorscheme gruvbox
"hi Comment guifg=Seagreen

"turn highlighting off after search
"nnoremap <Esc> :noh<CR><CR>
:nnoremap <silent> <C-l> :noh<CR><C-l>

"regex engine
if has("gui_macvim")
    set regexpengine=1
endif"

"fonts
set guifont=Ubuntu\ Mono:h18
   
"mappings
cmap E<CR> Ex<CR>
cmap <leader>w <C-W>w
imap ii <Esc>
imap jj <Esc>
map <tab> %
noremap H ^
noremap L $
nnoremap <leader>mv <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>
"cmap <leader>M :e $MYVIMRC
map <leader>w <C-W>w
nnoremap : ;
nnoremap ; :


let NERDTreeQuitOnOpen=1

" brace completion for CSS



"remapping tab opening"
"map <leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Softtabs, 2 spaces
 set tabstop=4
 set shiftwidth=4
 set expandtab

"Basic Settings
set autoindent 
set nocompatible
set smartindent
"set list
"set listchars=tab:>-, eol:¬, trail:.
set number
set hlsearch
set cursorline
set noswapfile
set vb
set laststatus=2
set splitbelow "sets new window to bottom
set splitright "sets new window to right

"set transparency=5

set ruler


let delimitMate_expand_cr=1

"Snipmate settings
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['scss'] = 'css' 

"autocommands
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

au BufRead,BufNewFile *.md set filetype=markdown

  "autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  autocmd FileType python set sw=4 sts=4 et


"cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let html_no_render=1
