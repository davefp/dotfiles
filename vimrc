" Install Plug if it doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax enable
set autoindent
set autowriteall
set cindent
set expandtab
set ignorecase
set noswapfile
set number
set ruler
set shiftwidth=2
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set updatetime=100

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'dewyze/vim-ruby-block-helpers'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

" Plugin config
let g:ale_linters = {'ruby': ['rubocop']}
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1

colorscheme base16-dracula

" Leader mappings
nmap <Leader>v :edit ~/.vimrc <CR>
nmap <Leader><Leader> :wa <CR>
nmap <Leader>g :GFiles <CR>
nmap <Leader>f :Files <CR>
nmap <Leader>b :Buffers <CR>
nmap <Leader>w :bd <CR>

" Other mappings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
