" Plugin directory
call plug#begin('~/local/share/nvim/plugged')

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerdtree for visual file system
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" For finding files with ctrl-p (cmd-p)
Plug 'ctrlpvim/ctrlp.vim'

" For mass commenting
Plug 'scrooloose/nerdcommenter'

" Color Theme
Plug 'morhetz/gruvbox'

" TS Syntax
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()

" Mappings (new bindings)
inoremap jj <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
noremap <Up> 5k
noremap <Down> 5j

" Change current word (refactor)
nmap <F2> <Plug>(coc-rename)

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" coc config
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-python',
	\ 'coc-pairs',
	\ 'coc-prettier',
	\ 'coc-eslint',
	\ 'coc-json',
	\ ]


" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Set theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme gruvbox

" Sets line numbers
set relativenumber

" Makes Ctrl-p ignore git ignores
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Set different indentation for javascript, html
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
