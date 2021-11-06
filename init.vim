" Plugin directory
call plug#begin('~/local/share/nvim/plugged')

" Nerdtree for visual file system
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Nerd Commenter, for commenting multiple lines of code
"Plug 'preservim/nerdcommenter'

" Color Theme
Plug 'morhetz/gruvbox'

" Prettify, js html
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Python specific
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Code Completion
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --ts-completer' } " gives suggestions for autocompletion, tab to cycle through

" Search for files using CTRL-p
Plug 'kien/ctrlp.vim'

" Web dev stuff
Plug 'pangloss/vim-javascript' " provides syntax highlighting and improved indentation for js
Plug 'maxmellon/vim-jsx-pretty' " provides syntax highlightning and improved indentation for reactjs
Plug 'alvan/vim-closetag' " closes tags, <div> etc.

call plug#end()

syntax on

" Mappings (new bindings)
inoremap jj <ESC>
"nmap <C-n> :NERDTreeToggle<CR>
noremap <Up> 5k
noremap <Down> 5j

" Set theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme gruvbox

" Sets line numbers
set relativenumber

" Set different indentation for javascript, html
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" for closetag plugin - see alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'
let g:closetag_filetypes = 'html,xhtml,phtml,js'

let python_highlight_all=1
syntax on
