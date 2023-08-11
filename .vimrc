
" This the vim file to configure vim according to your taste; 




" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Add numbers to each line on the left-hand side.
set number

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Setting Background dark
" set background=transparent

" Changing color scheme to solarized
colorscheme elflord


