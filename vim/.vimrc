" ~/.vimrc

" Basic settings
set nocompatible              " Use Vim settings rather than Vi
syntax enable                 " Enable syntax highlighting
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set ruler                     " Show cursor position
set showcmd                   " Show command in bottom bar
set cursorline                " Highlight current line
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching brackets

" Search settings
set incsearch                 " Search as characters are entered
set hlsearch                  " Highlight search matches
set ignorecase                " Ignore case when searching
set smartcase                 " Override ignorecase if search contains uppercase

" Indentation settings
set tabstop=4                 " Number of visual spaces per TAB
set softtabstop=4             " Number of spaces in tab when editing
set shiftwidth=4              " Number of spaces to use for autoindent
set expandtab                 " Convert tabs to spaces
set autoindent                " Copy indent from current line when starting new line
set smartindent               " Smart autoindenting when starting new line

" File settings
set encoding=utf-8            " Set file encoding
set fileencoding=utf-8        " Set file encoding for writing
set backup                    " Enable backup files
set backupdir=~/.vim/backup// " Backup directory
set directory=~/.vim/swap//   " Swap file directory
set undofile                  " Enable persistent undo
set undodir=~/.vim/undo//     " Undo directory

" Create directories if they don't exist
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "p", 0700)
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "p", 0700)
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p", 0700)
endif

" Key mappings
let mapleader = ","           " Set leader key to comma

" Clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk
