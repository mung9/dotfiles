if exists('g:vscode')

""""""""""" VSCode
let mapleader = ","
nmap <leader> <C-w>

" nnoremap <leader>gd <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
nnoremap <leader>p <Cmd>call VSCodeNotify('workbench.action.navigateToLastEditLocation')<CR>
nnoremap <leader>r <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nnoremap gr <Cmd>call VSCodeCall('editor.action.goToReferences')<CR>

nmap <silent> <c-k> <c-u>
nmap <silent> <c-j> <c-d>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary' " gcc or gc 
call plug#end()

else
""""""""""" Terminal
filetype plugin on

let mapleader = ","

" key map on terminal mode
" tnoremap <ESC> <C-\><C-n>

" split and navigate panels
nmap <leader>h :vsp<CR>
nmap <leader>v :sp<CR>

command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

call plug#begin('~/.vim/plugged')

" THEMES
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'

" GENERAL
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude .yarn'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary' " gcc or gc 
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tpope/vim-eunuch' " file management on the fly
Plug 'tpope/vim-fugitive'

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wakatime/vim-wakatime'

call plug#end()



" NERDTree
nmap <leader>b :NERDTreeToggle<CR> 
nmap <leader>e :NERDTreeFind<CR>

" File navigation
nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <leader>B :Buffers<CR>

" code navigation 
nmap <silent> <c-k> <c-u>
nmap <silent> <c-j> <c-d>

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1

endif
