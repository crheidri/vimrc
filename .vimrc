" --------------------------------------------------------------------------------
" Vundle
" --------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " required
Plugin 'jooize/vim-colemak'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'         " git status in gutter
Plugin 'Yggdroot/indentLine'            " line indents
Plugin 'vim-scripts/tComment'           " commenting
Plugin 'itchyny/lightline.vim'          " colored status bar
Plugin 'jiangmiao/auto-pairs'           " auto-close braces

" colors
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on               " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" --------------------------------------------------------------------------------
" general settings
" --------------------------------------------------------------------------------
" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start          " make backspaces more powerfull

" tabbing
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set number                              " show numbers
syntax enable                           " syntax highlighting

" to delete whitespaces
nnoremap <C-k>x :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" <Ctrl-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-n> <C-w>n
nnoremap <C-e> <C-w>e
nnoremap <C-i> <C-w>i

" --------------------------------------------------------------------------------
" 256 bit colors
" --------------------------------------------------------------------------------
set t_Co=256                    " 256 bit colors
if &term =~ '256color'          " Disable background color erase
    set t_ut=
endif

" --------------------------------------------------------------------------------
" gruvbox
" --------------------------------------------------------------------------------
let g:gruvbox_contrast_dark='hard'

" --------------------------------------------------------------------------------
" vim-hybrid
" --------------------------------------------------------------------------------
let g:hybrid_custom_colors=1

" --------------------------------------------------------------------------------
" badwolf
" --------------------------------------------------------------------------------
let g:badwolf_darkgutter=1

" --------------------------------------------------------------------------------
" gitgutter
" --------------------------------------------------------------------------------
nnoremap <C-w>G :GitGutterToggle<CR>
set updatetime=500
set signcolumn=yes

" --------------------------------------------------------------------------------
" tcomment
" --------------------------------------------------------------------------------

" --------------------------------------------------------------------------------
" indentLine
" --------------------------------------------------------------------------------
set encoding=utf-8
let g:indentLine_char='|'
let g:indentLine_color_term=237

" --------------------------------------------------------------------------------
" lightline
" --------------------------------------------------------------------------------
set laststatus=2
set noshowmode          " hide the lower mode bar

" --------------------------------------------------------------------------------
" ctrlp
" --------------------------------------------------------------------------------
" auto open in tabs
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" --------------------------------------------------------------------------------
" auto-pairs
" --------------------------------------------------------------------------------
" let g:AutoPairsMapCR=0
let g:AutoPairsMapSpace=0

" --------------------------------------------------------------------------------
" vim-colemak
" --------------------------------------------------------------------------------
" Turbo navigation (Colemak)
" Works with counts, see ':help complex-repeat'
nnoremap <silent> H @='5h'<CR>|xnoremap <silent> H @='5h'<CR>|onoremap <silent> H @='5h'<CR>|
nnoremap <silent> N @='5gj'<CR>|xnoremap <silent> N @='5gj'<CR>|onoremap <silent> N @='5gj'<CR>|
nnoremap <silent> E @='5gk'<CR>|xnoremap <silent> E @='5gk'<CR>|onoremap <silent> E @='5gk'<CR>|
nnoremap <silent> I @='5l'<CR>|xnoremap <silent> I @='5l'<CR>|onoremap <silent> I @='5l'<CR>|

" --------------------------------------------------------------------------------
" set the colorscheme
" --------------------------------------------------------------------------------
colorscheme badwolf
