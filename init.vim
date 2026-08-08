call plug#begin('~/.config/nvim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
  Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  Plug 'Shougo/neco-syntax'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'alvan/vim-closetag'
  Plug 'ap/vim-css-color'
  Plug 'bfredl/nvim-miniyank'
  Plug 'cespare/vim-toml'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dense-analysis/ale'
  Plug 'dzeban/vim-log-syntax'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'ekalinin/dockerfile.vim'
  Plug 'etordera/deoplete-rails'
  Plug 'fisadev/FixedTaskList.vim'
  Plug 'freeo/vim-kalisi'
  Plug 'hashivim/vim-terraform'
  Plug 'honza/vim-snippets'
  Plug 'int3/vim-extradite'
  Plug 'jgdavey/vim-blockle'
  Plug 'jiangmiao/auto-pairs'
  Plug 'juliosueiras/vim-terraform-completion'
  Plug 'kana/vim-textobj-user', { 'for': ['ruby'] }
  Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'haml', 'eruby'] }
  Plug 'majutsushi/tagbar'
  Plug 'morhetz/gruvbox'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'aktersnurra/no-clown-fiesta.nvim'
  Plug 'sainnhe/sonokai'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
  Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby'] }
  Plug 'othree/eregex.vim'
  Plug 'othree/html5.vim'
  Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'pseewald/vim-anyfold'
  Plug 'rhysd/vim-grammarous'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'slim-template/vim-slim'
  Plug 'stephpy/vim-yaml'
  Plug 'thinca/vim-localrc'
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-neotest/nvim-nio'
  Plug 'nvim-neotest/neotest'
  Plug 'olimorris/neotest-rspec'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  Plug 'declancm/cinnamon.nvim'
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'https://github.com/ryanoasis/vim-devicons'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
  Plug 'liuchengxu/vim-which-key'
  Plug 'luochen1990/rainbow'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  set encoding=UTF-8
call plug#end()

colorscheme no-clown-fiesta
set background=dark
syntax on
set guifont=Fira\ Code\ Light:h11
set clipboard+=unnamedplus
let g:mapleader=' '

let g:python3_host_prog = '/usr/bin/python3'
set expandtab
set tabstop=2
set incsearch
set hlsearch
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
\,sm:block-blinkwait175-blinkoff150-blinkon175

highlight CursorLine ctermbg=235 guibg=#28303d
highlight CursorColumn ctermbg=122 guibg=#28303d
set nu
set sw=2
set sts=2
let g:fuzzy_ignore = "gems/*"
let g:deoplete#enable_at_startup = 1
autocmd Filetype * AnyFoldActivate
autocmd TermClose * :echo expand('<abuf>')
autocmd FileType TelescopePrompt call deoplete#custom#buffer_option('auto_complete', v:false)
let g:anyfold_fold_comments=1
set foldlevel=0

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''

" mappings
nmap <F6> :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
nmap <F8> :TagbarToggle<CR>
function! WinMove(key)
  let t:curwin = winnr()
  exec 'wincmd '.a:key
  if (t:curwin == winnr())
    if(match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#xkblayout#enabled = 0
let g:airline_theme= 'deus'

let g:NERDTreeHighlightFoldersFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:webdevicons_enable_nerdtree = 0
let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusConcealBrackets = 0
let g:NERDTreeWinSize = 50
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

call which_key#register('<Space>', "g:which_key_map", 'n')
call which_key#register('<Space>', "g:which_key_map_visual", 'v')

"telescope find binds
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope current_buffer_fuzzy_find <cr>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <silent> <leader>gb :Gitsigns blame_line<CR>
nnoremap <silent> <leader>gr :Gitsigns reset_hunk<CR>

nnoremap <silent> <Leader>do :lopen<CR>
nnoremap <silent> <Leader>dc :lclose<CR>
nnoremap <silent><leader>q :BufferClose<CR>
let g:which_key_map =  {}

let g:which_key_map['d'] = {
  \ 'name' : '+debug',
  \ 'o' : [':lopen'     , 'Open debug panel'],
  \ 'c' : [':lclose'     , 'Close debug panel'],
\}

let g:which_key_map['q'] = [ ':BufferClose', 'Close buffer' ]
let g:which_key_map['f'] = {
  \ 'name' : '+telescope',
  \ 'f' : [':Telescope find_files'     , 'Find files'],
  \ 'g' : [':Telescope live_grep'     , 'Global text search'],
  \ 'b' : [':Telescope buffers'     , 'Buffers list'],
  \ 'h' : [':Telescope help_tags'     , 'Find help tags'],
  \ 'c' : [':Telescope current_buffer_fuzzy_find'     , 'Buffer text search'],
\}

let g:which_key_map['p'] = {
      \ 'name' : '+plug' ,
      \ 'i' : [':PlugInstall'              , 'install'],
      \ 'u' : [':PlugUpdate'               , 'update'],
      \ 'c' : [':PlugClean'                , 'clean'],
      \ 's' : [':source ~/.config/nvim/init.vim', 'source vimrc'],
      \ }

let g:which_key_map['z'] = {
  \ 'name' : '+Follding',
  \ 'o' : ['zo'     , 'Expand'],
  \ 'O' : ['zO'     , 'Expand all'],
  \ 'c' : ['zc'     , 'Collapse'],
\}

let g:which_key_map['g'] = {
  \ 'name' : '+Git',
  \ 'g' : [':LazyGit'     , 'LazyGit'],
  \ 'b' : [':Gitsigns blame_line'     , 'Blame line'],
  \ 'r' : [':Gitsigns reset_hunk'     , 'Reset hunk'],
\}


let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'f' : [':tabedit %' , 'Fullscreen']            ,
      \ 'm' : [':tabclose'  , 'Split view']            ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5' , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5' , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ }

let g:which_key_map['r'] = {
  \ 'name' : '+rspec',
  \ 'r' : [':Neotest run file', 'Run Nearest test in file']        ,
  \ 'l' : [':Neotest run last', 'Run Last test']                   ,
  \ 'a' : [':Neotest attach', 'Attach Nearest test']               ,
  \ 'o' : [':Neotest output', 'Neotest output']                    ,
  \ 's' : [':Neotest summary toggle', 'Neotest summary']           ,
  \ 'S' : [':Neotest stop', 'Neotest stop']                        ,
  \ 'p' : [':Neotest output-panel toggle', 'Output panel toggle']  ,
    \ 'j' : {
  \ 'name' : '+jump',
  \ 'n' : [':Neotest jump next', 'Jump next']                      ,
  \ 'p' : [':Neotest jump prev', 'Jump prev']                      ,
  \},
\}

set mouse=n
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" ale
let g:ale_linters = {
      \   'ruby': ['standardrb', 'rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'html': ['tidy'],
      \}
let g:ale_fixers = {
      \    'ruby': ['standardrb'],
      \}
let g:ale_fix_on_save = 1

set completeopt-=preview
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:terraform_completion_keys = 1
let g:terraform_registry_module_completion = 0

set hidden

let g:barbar_auto_setup = v:false
lua << EOF
  require('barbar').setup {
    auto_hide = false,
    tabpages = true,
    closable = true,
    clickable = true,
    exclude_ft = {'javascript'},
    exclude_name = {'package.json'},
    sidebar_filetypes = {
      NvimTree = true,
      Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },
    icons = {
        filetype = {
        enabled = true
        },
      },
      no_name_title = nil,
  }

local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"ruby","cpp", "python", "lua", "java", "javascript", "embedded_template"},
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
require('gitsigns').setup()
require("ibl").setup()
require("neotest").setup({
  adapters = {
    require("neotest-rspec")({
      rspec_cmd = function()
        return { "bundle", "exec", "rspec" }
      end
    }),
  },
})
EOF

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
let g:rainbow_conf = {
\ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\ 'guis': [''],
\ 'cterms': [''],
\ 'operators': '_,_',
\ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\ 'separately': {
\   '*': {},
\   'markdown': {
\     'parentheses_options': 'containedin=markdownCode contained',
\   },
\   'lisp': {
\     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\   },
\   'haskell': {
\     'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
\   },
\   'vim': {
\     'parentheses_options': 'containedin=vimFuncBody',
\   },
\   'perl': {
\     'syn_name_prefix': 'perlBlockFoldRainbow',
\   },
\   'stylus': {
\     'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
\   },
\   'css': 0,
\   'nerdtree': 0,
\ }
\}

au FocusGained,BufEnter * :checktime

let g:rainbow_active = 1
let NERDTreeShowHidden = 1

autocmd VimEnter * NERDTree

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
