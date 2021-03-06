" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-expand-region'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'sudar/vim-arduino-syntax'
" Plugin 'rjohnsondev/vim-compiler-go'

call vundle#end()

filetype plugin indent on

" Simple settings
syntax enable
set number
set autoindent
set ruler
set expandtab
set tabstop=4
set showmatch
set smartcase
set ignorecase
set hlsearch
set t_vb=
set shiftwidth=2
set scrolloff=3
set showcmd
set ruler
set backspace=indent,eol,start
set cpoptions+=$

" swapfile in other place
"set swapfile
"set directory=~/.vim-tmp

" theme
set background=dark
colorscheme molokai

" History
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" airline
set laststatus=2

" let g:airline_powerline_fonts = 1
set t_Co=256

" vim markdown
au BufRead,BufNewFile *.md set filetype=markdown

" autosave when lost focus
au FocusLost * :wa
au FocusLost * silent! wa
set autowrite

" don't show warnings when saving go file
let g:go_fmt_fail_silently = 1

" let rubocop check my syntax
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec      = '~/.rbenv/shims/ruby'
" let g:syntastic_ruby_rubocop_args = "--my --args --here" " waiting for param

"""""" map
" window movements
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" nnoremap <C-p> :bprevious<CR>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" vim-expand
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" select matching bracket
noremap % v%

" disable F1
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

" buffer movements
map <up> <ESC>:ls<RETURN>
map <down> <ESC>:buffer<SPACE>
map <left> <ESC>:bp<RETURN>
map <right> <ESC>:bn<RETURN>
