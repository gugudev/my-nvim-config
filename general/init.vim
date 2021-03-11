source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/general/theme.vim
source $HOME/.config/nvim/general/functions.vim

" General
set encoding=utf-8                " The encoding displayed
set hidden                        " Required to keep multiple buffers open multiple buffers
set colorcolumn=80,120
set synmaxcol=1000                " Don't syntax highlight long lines
set mmp=5000
set scrolloff=3

" Behavior
set formatoptions-=cro            " Stop newline continution of comments
set nowrap                        " Display long lines as just one line
set nobackup                      " This is recommended by coc
set nowritebackup                 " This is recommended by coc
set updatetime=300                " Faster completion
set timeoutlen=500                " By default timeoutlen is 1000 ms
set clipboard=unnamedplus         " Copy paste between vim and everything else
set autochdir                     " Your working directory will always be the same as your working directory
set lazyredraw

" switch to relative numbers in normal mode
autocmd BufLeave    * :set norelativenumber
autocmd BufEnter    * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Appearance
set number                              
set relativenumber                
set ruler                         " Show the cursor position all the time
set cmdheight=2                   " More space for displaying messages
set cursorline                    " Enable highlighting of the current line
set noshowmode                    " We don't need to see things like -- INSERT -- anymore
set scrolloff=2                   " Keep at least 2 lines above/below
set sidescrolloff=5               " Keep at least 5 lines left/right
set display=lastline

" Tabs and Indents
set showtabline=2                 " Always show tabs
set textwidth=80                  " Text width maximum chars before wrapping
set expandtab                     " Don't expand tabs to spaces.
set tabstop=2                     " The number of spaces a tab is
set softtabstop=2                 " While performing editing operations
set shiftwidth=2                  " Number of spaces to use in auto(indent)
set smarttab                      " Tab insert blanks according to 'shiftwidth'
set autoindent                    " Use same indenting on new lines
set smartindent                   " Smart autoindenting on new lines
set shiftround                    " Round indent to multiple of 'shiftwidth'
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

" Searching {{{
set ignorecase                    " Search ignoring case
set smartcase                     " Keep case when searching with *
set infercase                     " Adjust case in insert completion mode
set incsearch                     " Incremental search
set hlsearch                      " Highlight search results
set wrapscan                      " Searches wrap around the end of the file
set showmatch                     " Jump to matching bracket
set matchpairs+=<:>               " Add HTML brackets to pair matching
set matchtime=1                   " Tenths of a second to show the matching paren
set cpoptions-=m                  " showmatch will wait 0.5s or until a char is typed

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC