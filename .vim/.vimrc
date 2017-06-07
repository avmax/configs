
"                               ----- useful tutorials, tips and tricks -----



" https://computers.tutsplus.com/ru/tutorials/basic-vim-configuration--cms-21498
" https://scotch.io/tutorials/getting-started-with-vim-an-interactive-guide
" https://habrahabr.ru/post/64224/ 
" http://nvie.com/posts/how-i-boosted-my-vim/
" https://raw.githubusercontent.com/nvie/vimrc/master/vimrc nice example



" ----- settings -----

" general
" ---------------------------------

    "be iMproved, required
    set nocompatible

    "encoding
    set termencoding=utf-8
    set encoding=utf-8

    "set terminals title
    set title

    "latin keyboard by default
    set iminsert=0

    "import plugins
    source ~/.vim/plugins.vim

    "required to detect filetypes
    filetype on
    "detect file types
    filetype plugin indent on

    "no backup
    set nobackup

    "no swapfile
    set noswapfile

    "automatically reload files changed outside the vim
    set autoread



" GUI
" ---------------------------------

    if has('gui_running')
        set guitablabel=%t\ %M
        set macligatures
        set guioptions-=m  "remove menu bar
        set guioptions-=T  "remove toolbar
        set guioptions-=r  "remove right-hand scroll bar
        set guioptions-=L  "remove left-hand scroll bar
        set macligatures
        set guifont=Fira\ Code:h14
    endif



" Text identation
" ---------------------------------

    "a tab is now 4 characters
    set tabstop=4
    "dont wrap lines
    set nowrap
    "copy tabs after entering a new line
    set autoindent
    "same as autoindent but smarter
    set smartindent
    "clicking Tab at start of line adds setted shiftwidth
    set smarttab
    "replace tab character with spaces
    set expandtab
    "indenting is now 4 spaces
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
    "show invisible characters by default
    set list
    "trailing spaces and so on
    set listchars=trail:·,tab:»·,extends:#,nbsp:.,eol:¬



" Numberline
" ---------------------------------

    "underline the current line, for quick orientation
    set cursorline
    "this turns on line numbering
    set number
    "this turns on relative numbering
    set norelativenumber
    "set the line numbers to 4 spaces
    set numberwidth=4
    "set current line highlighting
    highlight LineNr ctermfg=red ctermbg=yellow



" Statusline
" ---------------------------------

    " always show current vim mode
    set showmode

    set statusline=%t       "tail of the filename
    set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
    set statusline+=%{&ff}] "file format
    set statusline+=%h      "help file flag
    set statusline+=%r      "read only flag
    set statusline+=%y      "filetype
    set statusline+=%=      "left/right separator
    set statusline+=%c,     "cursor column
    set statusline+=%l/%L   "cursor line/total lines
    set statusline+=\ %P    "percent through file

    set statusline=%<%f%h%m%r\ \ %{&encoding}\ 0x\ \ %l,%c%V\ %P

    set laststatus=2   " Always show the statusline



" cmd Line
" ---------------------------------

    set cmdheight=2

    "make tab completion for files/buffers act like bash
    set wildmenu
    set wildmode=list:full 
    set wildignore=.git,*.swp,*/tmp/*




" Windows
" ---------------------------------

    "open new split on bottom
    set splitbelow
    "open new vsplit on right
    set splitright



" Buffers
" ---------------------------------

    "hide buffers instead of closing them
    set hidden




" History
" ---------------------------------

    "set history size
    if version >= 700
        set history=64
        set undolevels=128
        set undodir=~/.vim/undodir/
        set undofile
        set undolevels=1000
        set undoreload=10000
    endif



" Search
" ---------------------------------

    "highlight search matches
    set hlsearch
    "show search matches as you type
    set incsearch
    "ignore case when searching
    set ignorecase
    "ignore case if search pattern is all lowercase, case-sensitive otherwise
    set smartcase



" Brackets and Quotes
" ---------------------------------

    "show matching bracket
    set showmatch



" Syntax and Colors
" ---------------------------------

    if (has("termguicolors"))
        set termguicolors
    endif

    "set 256 colors
    set t_Co=256

    "set syntax highlighting
    syntax on

    "choose colorcseme
    set background=dark
    colorscheme solarized
    let g:enable_bold_font = 1





" source vim family files
" ---------------------------------

    source ~/.vim/variables.vim
    source ~/.vim/functions.vim
    source ~/.vim/filetypespecific.vim
    source ~/.vim/mappings.vim

