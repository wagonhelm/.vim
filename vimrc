" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
"
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


    set nowrap                      " wrap long lines
    set autoindent                  " indent at the same level of the
    set shiftwidth=4                " use indents of 4 spaces
    set expandtab                   " tabs are spaces, not tabs
    set tabstop=4                   " an indentation every four columns
    set softtabstop=4               " let backspace delete indent

    

    set history=1000                " Store a ton of history (default is 20)
    
    set tabpagemax=15               " only show 15 tabs
    set showmode                    " display the current mode

    " set cursorline                  " highlight current line
    set nu                          " Line numbers on
    colorscheme gruvbox 
    set background=dark             " Assume a dark background
    set clipboard=unnamed
    
    nnoremap <silent> ]<Space> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
    nnoremap <silent> [<Space> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>
    map <Enter> o<ESC>
    map <S-Enter> O<ESC>
    inoremap fd <ESC>
    nmap fc i#include <stdio.h><ESC>2o<ESC>iint main()<Enter>{<Enter>}<ESC>O
    set colorcolumn=80
	map <F9> :w <CR> : !clear && gcc % <CR>
    map <C-i>f ifor(int i = 0; i = 0; i < n; ++i)<Enter>{<Enter>}<ESC>O
    set runtimepath^=~/.vim/bundle/vim-airline/autoload/airline.vim
    set laststatus=2
    execute pathogen#infect()
    let g:airline_theme='gruvbox'
    let g:airline_powerline_fonts = 1
    highlight LineNr ctermbg=000000
    highlight NonText ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE
