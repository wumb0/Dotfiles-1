""""""""""""""
"Vundle Stuff"
""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

""""""""""""""""""
"All of my Vundles"
"""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'                   "Vundles gotta manage Vundle
Plugin 'altercation/vim-colors-solarized'       "A pretty awesome colorscheme
Plugin 'bling/vim-airline'                      "A pretty awesome utility line
Plugin 'vim-airline/vim-airline-themes'         "Needed for themes for airline
Plugin 'scrooloose/syntastic'                   "Check my syntax before compiling
Plugin 'Valloric/YouCompleteMe'                 "Complete everything I type
Plugin 'terryma/vim-multiple-cursors'           "Sublime Text styled multiple cursors
Plugin 'kien/ctrlp.vim'                         "Fuzzy logic search for files
Plugin 'scrooloose/nerdtree'                    "File browser in a vsplit

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""
"Bow down to your supreme leader"
"""""""""""""""""""""""""""""""""
let mapleader = ","

"The following characters are being used
"<leader>n = function! NERDTreeToggleOrFocus()
nnoremap <leader>m :tabprevious
nnoremap <leader>. :tabnext

"enable syntax highlighting
syntax enable
set background=dark
colorscheme solarized

"autoindenting because formatting is so much easier with this
set autoindent

"""""""""""""""""""""
"Vim-Airline Settings"
"""""""""""""""""""""
set noshowmode                                      "Turn off the regular insert bar
set laststatus=2                                    "This is what I had to use to enable the bottom bar

let g:airline_theme = 'base16'                      "Turns out that this works better than solarized' for solarized
""Colorscheme options
"solarized = meh, not as nice.  Surprising, since I am using it with solarized
"badwolf = okay
"base16 = woot
"hybrid = it's colorless (would be good for kindleberry)
"jellybeans = ^ but with some color
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1      "I love me my Syntastic
let g:airline#extensions#fugitive#enabled = 1

let g:airline_powerline_fonts = 1



"TODO: Get whitespace enabled
"let g:airline#extras#whitespace#enabled = 1

""""""""""""""""""""""""""""""""
"Recommended Syntastic settings"
""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""
"NERDTree Settings"
"""""""""""""""""""
"Settings as per Jaime's presentation
function! NERDTreeToggleOrFocus()
    if expand("%") =~ "NERD_tree"
        :NERDTreeToggle
    else
        call NERDTreeFocus()
    endif
endfunction
nmap <leader>n :call NERDTreeToggleOrFocus()<CR>

"relative line numbers plus the current line on it
"modified from Jaime Geiger's Vim config
if exists('+relativenumber') && (version >= 704 ) || (version == 703) && has('patch1115')
    set relativenumber
    set number
    elseif exists('+relativenumber')
    set relativenumber
    set number

    autocmd FocusLost * :set relativenumber
    autocmd FocusGained * :set number

    autocmd InsertEnter * :set relativenumber
    autocmd InsertLeave * :set relativenumber | set number
else
    set number
endif

"underline the current line the cursor is on
set cursorline

"highlight the 80th column to make code pretty
"TODO: Only enable colorcolumn if the file is not a .txt file
set colorcolumn=80

"ensure one line above/below your cursor when scrolling
set scrolloff=1

"force backspace to behave like I want it to
set backspace=indent,eol,start

"Special tab stuff
"tab and indent settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab
set autoindent

"set ruler
set ruler

"spellchecking
set spell spelllang=en_us
