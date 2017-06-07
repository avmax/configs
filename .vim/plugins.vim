
" plugins
" ---------------------------------

    " required for Vundle
    filetype off

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim  
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

" upgrade vim
        Plugin 'scrooloose/nerdtree'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'Xuyuanp/nerdtree-git-plugin'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        Plugin 'mileszs/ack.vim'
        Plugin 'tpope/vim-surround'
        Plugin 'NLKNguyen/copy-cut-paste.vim'
        Plugin 'Raimondi/delimitMate'

" git
        Plugin 'airblade/vim-gitgutter'
        Plugin 'tpope/vim-fugitive'

" syntax helpers
        Plugin 'gregsexton/MatchTag'
        Plugin 'elzr/vim-json'
        Plugin 'Chiel92/vim-autoformat'
        Plugin 'gorodinskiy/vim-coloresque'
        Plugin 'JulesWang/css.vim'
        Plugin 'SevInf/vim-bemhtml'
        Plugin 'heavenshell/vim-jsdoc'
        Plugin 'alexlafroscia/postcss-syntax.vim'
        Plugin 'cakebaker/scss-syntax.vim'

" programming
        Plugin 'scrooloose/syntastic'
        Plugin 'ternjs/tern_for_vim'
        Plugin 'valloric/youcompleteme'
        Plugin 'mattn/emmet-vim'
        Plugin 'quramy/tsuquyomi'
        Plugin 'leafgarland/typescript-vim'
        Plugin 'othree/csscomplete.vim'
        " [ID] = the extra_menu_info parameter at line 66 in the YouCompleteMe/third_party/ycmd/ycmd/completers/all/identifier_completer.py file.


"  colorshemes
        Plugin 'flazz/vim-colorschemes'
        Plugin 'acarapetis/vim-colors-github'
        Plugin 'mhartington/oceanic-next'

    " required
    call vundle#end()

    " requried
    filetype plugin indent on





" plugins settings
" ---------------------------------

" NERDTree
    let NERDTreeShowHidden=1


" NERDTree-git-plugin
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirt"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
    \ }


" NERDCommenter
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    " Use compac syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1
    " Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'left'
    " Set a language to use its alternate delimiters by default
    let g:NERDAltDelims_java = 1
    " Add your own custom formats or override the defaults
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    " Allow commenting and inverting empty lines (useful when commenting a region)
    let g:NERDCommentEmptyLines = 1
    " Enable trimming of trailing whitespace when uncommenting
    let g:NERDTrimTrailingWhitespace = 1


" NERDTree git plugin
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }


" airline
    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''

    let g:airline_powerline_fonts = 1

    let g:airline_theme='monochrome'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''

    " disable word counting.
    let g:airline#extensions#wordcount#enabled = 0
    " enable enhanced tabline
    let g:airline#extensions#tabline#enabled = 1
    " enable/disable displaying open splits per tab (only when tabs are opened)
    let g:airline#extensions#tabline#show_splits = 1
    " enable/disable displaying buffers with a single tab
    let g:airline#extensions#tabline#show_buffers = 1
    " configure how numbers are displayed in tab mode. >
    let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
    let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
    let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
    " enable/disable YCM integration >
    let g:airline#extensions#ycm#enabled = 1
    " set error count prefix >
    let g:airline#extensions#ycm#error_symbol = 'E:'
    " set warning count prefix >
    let g:airline#extensions#ycm#warning_symbol = 'W:'


" syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "passive_filetypes": ["html"] }

    let g:tsuquyomi_disable_quickfix = 1
    let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.


" emmet
    let g:user_emmet_install_global = 0
    let g:user_emmet_leader_key = '<c-z>'


" copy-cut-paste
    let g:copy_cut_paste_no_mappings = 1

" typescript
    let g:typescript_indent_disable = 1
