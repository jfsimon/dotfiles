syntax on                   " highlight syntax

" indentation
set tabstop=4               " tabs are 4 column wide
set expandtab               " hit <tab> insert spaces
set shiftwidth=4            " re-indent operations indent by 4 spaces
set softtabstop=4           " hit <tab> insert 4 spaces
set cindent                 " C style indentation
set backspace=indent,eol,start
set smarttab
set smartindent             " manage indentation inside braces
set paste                   " no auto-indent on paste
set shiftround              " tab go to next tabstop

" search
set incsearch               " perform search as you type it
set hlsearch                " highlight search results
set ignorecase              " case insensitive searches
set smartcase               " case sensitive when uppercase chars

" highlights & special chars
set fileformats=unix        " always show ^M for DOS CR
set showmatch               " highlight matching braces

" interface options
set ruler                   " show the cursor position all the time
set number                  " show line numbers
set showcmd                 " display incomplete commands
set showmode                " show mode status
set confirm                 " deal with the unsaved buffer warning more conveniently
setlocal spell spelllang=en_us " enable spelling
set list                    " show whitespaces
set listchars=tab:»·,trail:· "show tabs and trailing

" mouse options
set mouse=a                 " turn mouse on for all modes
set ttymouse=xterm2         " set xterm mouse behavior
set mousemodel=popup_setpos " show pop-up on right click for word under mouse cursor

" auto inserts
set comments="sl:/*,mb: *,elx: */" " auto insert comments blocks
set formatoptions+=r        " auto-insert ' * ' when hitting <enter> in comment block

" file types
filetype on                 " enable file type detection
filetype plugin on          " auto-load file type plug-in
filetype indent on          " auto-load file type indent

" plug-ins
call pathogen#infect()      " pathogen plugin
imap <buffer> <F5> <C-O>:call PhpInsertUse()<CR>
map <buffer> <F5> :call PhpInsertUse()<CR>

" colors
set background=dark
colorscheme solarized

