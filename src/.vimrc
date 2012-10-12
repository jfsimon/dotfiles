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
set cursorline              " highlight current line
set confirm                 " deal with the unsaved buffer warning more conveniently
set writeany                " write readonly files without displaying error
setlocal spell spelllang=en_us " enable spelling
set spellsuggest=5          " suggest
set list                    " show whitespaces
set listchars=tab:»·,trail:· "show tabs and trailing
if has('statusline')
    set laststatus=2
    set statusline=%<%f\    " filename
    set statusline+=%w%h%m%r " options
    set statusline+=%{fugitive#statusline()} " git status
    set statusline+=\ [%{&ff}/%Y] " file type
    set statusline+=\ [%{getcwd()}] " current directory
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " right aligned file nav info
endif
set scrolloff=10            " minimum lines to keep above and below cursor

" utf8
scriptencoding utf-8
set fileencoding=UTF-8      " speak utf8
set encoding=UTF-8          " display utf8

" mouse options
set mouse=a                 " turn mouse on for all modes
set ttymouse=xterm2         " set xterm mouse behavior
set mousemodel=popup_setpos " show pop-up on right click for word mouse cursor

" auto formatting
set comments="sl:/*,mb: *,elx: */" " auto insert comments blocks
set formatoptions+=r        " auto-insert ' * ' when hitting <enter> in comment block
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")')) " remove trailing whitespaces and ^M

" auto completion
set wildmenu                " show list instead of just completing
set wildmode=list:longest,full " ctrl <Tab> completion, list matches, then longest common part, then all
set completeopt=longest,menuone " same as above
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

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

" ctrl shortcuts
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V> "+gP
cmap <C-V> <C-R>+
