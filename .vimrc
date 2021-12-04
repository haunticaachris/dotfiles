" .vimrc

" autocommands
" set backup names to time of file save
autocmd BufWritePre * let &bex = ' - ' . strftime("%b %d") . '.bk'

" backup (must create ~/.tmp folder to use)
set backup " turn on backups
set backupdir=~/.tmp,~/tmp " backup directory
set directory=~/.tmp,~/tmp " swap file directory
set writebackup " writebackup on

" color scheme
syntax on " turn syntax highlighting on
colorscheme cs " color scheme to use

" folding
set foldmethod=marker " use {{{ }}} markers to set folds

" general
set encoding=utf8 " default encoding
set fileencoding=utf8 " files encoding
let g:python_recommended_style=0 " Turn off python styling from ft plugin
set history=50 " lines of history
set noerrorbells " turn off error bells
set scrolloff=15 " scroll before hitting the bottom of the screen
set wildmenu " turn on wildmenu

" indenting
set ai " autoindenting on
set noexpandtab " dont expand to spaces
set shiftwidth=8 " width of reindent operations
set softtabstop=8 " tab width of editing operations
set tabstop=8 " tab width shown

" mappings
" mapping to easily write c comments
map -cc <Esc>i/*  */<Esc>hhi

" rendering
set background=dark " background color
set colorcolumn=121 " column on the right to show margin
set lazyredraw " render only when needed
set list " show tabs and trailing spaces
set listchars=tab:>\ ,trail:! " edit list mode format
set number " line numbers are shown
set textwidth=120 " max line size
set nowrap " turn on line wrapping

" search
set hlsearch " highlight search matches
set ignorecase " ignore case for searches
set incsearch " search as characters are entered

" status bar
set laststatus=2 " turn on status bar

set statusline=%1* " turn on colors
set statusline+=[%t] " filename tail
set statusline+=\ %y " filetype
set statusline+=%= " right side
set statusline+=[%l/%L]\  " cursor line
set statusline+=[%c%V] " cursor column
