" Plugin directory
call plug#begin('~/local/share/nvim/plugged')

" Nerdtree for visual file system
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Nerd Commenter, for commenting multiple lines of code
Plug 'preservim/nerdcommenter'

" Color Theme
Plug 'morhetz/gruvbox'

" Python specific
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Code Completion
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

" Search for files using CTRL-p
Plug 'kien/ctrlp.vim'

call plug#end()

syntax on

" Mappings (new bindings)
inoremap jj <ESC>
nmap <C-n> :NERDTreeToggle<CR>
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

let python_highlight_all=1
syntax on
