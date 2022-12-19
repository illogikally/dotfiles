call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'vim-airline/vim-airline'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'joshdick/onedark.vim'
Plug 'haya14busa/is.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
call plug#end()

let mapleader=" "

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:python_recommended_style=0
syntax on
colo onedark
set background=dark
set nu rnu
set smartindent
set ignorecase smartindent
set smartcase
set timeoutlen=300
set ttimeoutlen=0
set showcmd
set tabstop=2
set shiftwidth=2
set hlsearch
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set expandtab
filetype on
filetype plugin on
filetype plugin indent on

nnoremap Q @q
noremap j gj
noremap k gk
noremap n nzz
noremap N Nzz

" NERD tree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap ' `

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemode = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0

" nmap <Leader>1 <Plug>AirlineSelectTab1
" nmap <Leader>2 <Plug>AirlineSelectTab2
" nmap <Leader>3 <Plug>AirlineSelectTab3
" nmap <Leader>4 <Plug>AirlineSelectTab4
" nmap <Leader>5 <Plug>AirlineSelectTab5
" nmap <Leader>6 <Plug>AirlineSelectTab6
" nmap <Leader>7 <Plug>AirlineSelectTab7
" nmap <Leader>8 <Plug>AirlineSelectTab8
" nmap <Leader>9 <Plug>AirlineSelectTab9
" nmap <Leader>[ <Plug>AirlineSelectPrevTab
" nmap <Leader>] <Plug>AirlineSelectNextTab

" Buffers
nnoremap <Leader>bb :bd<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>

nnoremap <Leader>w <C-w>w
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
xnoremap <Leader>r :s/<C-r>"//g<Left><Left>
xnoremap <Leader>rc :s/<C-r>"//gc<Left><Left><Left>

nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>b :Bu<CR>
nnoremap <C-i> i <ESC>r
nnoremap <Leader>vb va{o<Up> 
map <Leader><Space> :let @/=''<CR>

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow -g "!.git/*"'
" let g:lightline={'colorscheme':'seoul256'}
let g:lightline={'colorscheme': 'onedark'}

let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
