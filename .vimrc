" Setup theme here
syntax on
colorscheme monokai-phoenix
set t_Co=256

" Vundle settings here
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/goyo.vim'

call vundle#end()            " required
filetype plugin indent on    " required


" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Misc python formatting
" PEP 8 indentation
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
" Set the default file encoding to UTF-8:
set encoding=utf-8
" For full syntax highlighting:
let python_highlight_all=1
syntax on

let g:rainbow_active = 1

" open python in new window
autocmd Filetype python nnoremap <buffer> <F6> :w<CR>:bel term python3.7 "%"<CR>
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>


" Misc general formatting
" line numbers
set nu

" autoindent
set autoindent

" ruler
set colorcolumn=80

set cursorline

set laststatus=2

" Set tab functions
ca tn tabnew

"| vim's .swps can get annoying but are still useful. Save them to this
"location instead of the usual same directory
set directory^=$HOME/.vimswp//
