"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------

  " Theme
  Plug 'kristijanhusak/vim-hybrid-material'

  " Insert and delete brakets, parens, quotes.
  Plug 'jiangmiao/auto-pairs'

  " Rainbow Parentheses
  Plug 'luochen1990/rainbow'
  let g:rainbow_active = 0 

  " Vim Polygot
  Plug 'sheerun/vim-polyglot'

" -----------------------------------------------------------------------------
" Appearance
" -----------------------------------------------------------------------------

  " Highligh the cursor word
  Plug 't9md/vim-quickhl'

  " Rainbow Parentheses
  Plug 'luochen1990/rainbow'
    let g:rainbow_active = 0

  " Highligh cursor word
  Plug 'itchyny/vim-cursorword'

  " Highligh empty space and auto remove it
  Plug 'ntpeters/vim-better-whitespace'
    let g:better_whitespace_enabled=0
    let g:strip_whitespace_on_save=0

  " Visual indentation
  Plug 'Yggdroot/indentLine'
    let g:indentLine_enabled = 0

  " Nice starup
  Plug 'mhinz/vim-startify'

" -----------------------------------------------------------------------------
" Behavior
" -----------------------------------------------------------------------------
  " It shows a popup describing commands
  Plug 'leoatchina/vim-which-key'

  " Mapping manager
  Plug 'file://'.expand('~/.config/vim_mapping_manager'), { 'do' : ':UpdateRemotePlugins', 'as': 'vim-mapping-manager-dev' }

  " Smooth scrolling
  Plug 'yuttie/comfortable-motion.vim'
    let g:comfortable_motion_no_default_key_mappings = 1
    let g:comfortable_motion_impulse_multiplier = 1

  " Plug 'wellle/context.vim'
    " let g:context_enabled = 0

  " Alig code
  Plug 'godlygeek/tabular',{  'on': 'Tabularize'}

  " Comments
  Plug 'tpope/vim-commentary'

  " Find and Replace
  Plug 'jremmen/vim-ripgrep'

  " Vim Line no Indicator
  Plug 'drzel/vim-line-no-indicator'

  " Allow repeat to work with plugins
  Plug 'tpope/vim-repeat'

  " Nice foldings
  Plug 'tmhedberg/SimpylFold'

  " Navigate and highlight matching words
  Plug 'andymass/vim-matchup'

  " Lightning fast left-right movement in Vim
  Plug 'unblevable/quick-scope'

  " Better motion
  Plug 'justinmk/vim-sneak'
  let g:sneak#label = 1

  " Find and replace
  Plug 'brooth/far.vim'

  " Fuzzy finder for lines in the current file
  Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }

" -----------------------------------------------------------------------------
" Fuzzy finder
" -----------------------------------------------------------------------------
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  source $HOME/.config/nvim/plugins/fzf.vimrc

  Plug 'alexvko/fzf-to-functions.vim'

" -----------------------------------------------------------------------------
" Autocomplete and Snippets
" -----------------------------------------------------------------------------
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    let g:coc_global_extensions = ['coc-solargraph']

  Plug 'SirVer/ultisnips'
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsJumpForwardTrigger="<c-n>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

  " ES2015 code snippets
  Plug 'epilande/vim-es2015-snippets'

  " React code snippets
  " Plug 'epilande/vim-react-snippets'

  Plug 'honza/vim-snippets'

" -----------------------------------------------------------------------------
" Sidebar
" -----------------------------------------------------------------------------
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  Plug 'ryanoasis/vim-devicons',{ 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/plugins/nerdtree.vim'

" -----------------------------------------------------------------------------
" Airline
" -----------------------------------------------------------------------------
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  let g:airline_theme = "hybrid"
  let g:airline_section_a = ''
  let g:airline_section_b = ''
  " let g:airline_section_z = '%3p%%/%L'
  let g:airline_section_y = '%#__accent_bold#%{LineNoIndicator()}%#__restore__#'
  " let g:airline_section_x = ''
  " let g:airline#extensions#tagbar#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" -----------------------------------------------------------------------------
" Text Objects
" -----------------------------------------------------------------------------
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-entire'
  Plug 'lucapette/vim-textobj-underscore'
  Plug 'rhysd/vim-textobj-ruby'
  Plug 'kana/vim-textobj-indent'
  Plug 'thinca/vim-textobj-function-javascript'
  Plug 'inside/vim-textobj-jsxattr'
  Plug 'whatyouhide/vim-textobj-erb'

  Plug 'tpope/vim-surround'
    let g:surround_35  = "#{\r}"    " #
    let g:surround_45 = "<% \r %>"  " -
    let g:surround_61 = "<%= \r %>" " =

" -----------------------------------------------------------------------------
" Ctags
" -----------------------------------------------------------------------------
  Plug 'junegunn/vim-peekaboo'
  Plug 'junegunn/goyo.vim'
    let g:goyo_height='95%'
    let g:goyo_width='120'
    autocmd! User GoyoLeave nested exec ':so ~/.config/nvim/init.vim'

" -----------------------------------------------------------------------------
" Ruby
" -----------------------------------------------------------------------------
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'tpope/vim-rails'
  Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
  Plug 'tpope/vim-endwise', { 'for': 'ruby' }
  Plug 'tpope/vim-cucumber'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 't9md/vim-ruby_eval'

" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
  Plug 'Galooshi/vim-import-js'

 

  Plug 'heavenshell/vim-jsdoc'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'chemzqm/vim-jsx-improve'

" -----------------------------------------------------------------------------
" HTML
" -----------------------------------------------------------------------------
  Plug 'mattn/emmet-vim'

" -----------------------------------------------------------------------------
" Ansible
" -----------------------------------------------------------------------------
  Plug 'pearofducks/ansible-vim', { 'for': 'yaml.ansible' }

call plug#end()
