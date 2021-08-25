set background=dark
set incsearch
set number relativenumber
set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=10
set sidescrolloff=20
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set autoread
set hlsearch
set timeoutlen=1000
set ttimeoutlen=0
set laststatus=2

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'lfv89/vim-interestingwords'
Plug 'kshenoy/vim-signature' " for marks
Plug 'tpope/vim-sleuth' " for auto indent size detection
Plug 'mg979/vim-visual-multi'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'dhruvasagar/vim-zoom'
Plug 'henrik/vim-indexed-search'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <BACKSPACE> <Nop>
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader>r :NERDTreeFind<CR>

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>a :Ag <C-r><C-w><CR>

nnoremap <C-s> :wa<CR>
inoremap <C-s> <Esc>:wa<CR>

hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=lightgrey guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=lightgrey guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

let g:indexed_search_max_lines=1000000
let g:indexed_search_max_hits=10000
