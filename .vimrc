set nocompatible

" Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/vundle'
  Plugin 'elzr/vim-json'
  Plugin 'tpope/vim-cucumber'
  Plugin 'fatih/vim-go'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'elixir-lang/vim-elixir'
  Plugin 'kien/ctrlp.vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'janko-m/vim-test'
  Plugin 'slim-template/vim-slim'
  Plugin 'lervag/vimtex'
  Plugin 'rodjek/vim-puppet'
  Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

" Solarized config
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" Test.vim mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Settings
set visualbell
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set colorcolumn=80
set nowrap
set backspace=indent,eol,start
set autoindent
set scrolloff=9999
set ignorecase
set incsearch

" Filetype handling
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead Puppetfile set filetype=ruby
autocmd BufNewFile,BufRead *.ru set filetype=ruby
autocmd BufNewFile,BufRead *.ofx set filetype=xml
autocmd BufNewFile,BufRead *.md setlocal spell textwidth=80 filetype=markdown
autocmd BufNewFile,BufRead *.feature setlocal spell textwidth=80 filetype=gherkin
autocmd BufNewFile,BufRead *.tex setlocal spell textwidth=80
autocmd Filetype gitcommit setlocal spell textwidth=72

" vim-json conig
let g:vim_json_syntax_conceal = 0

" Keymappings
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
map       <CR>     :noh<CR>

" Aliases
com! FormatJSON %!python -m json.tool

match ErrorMsg '\s\+$'
map <leader>c :%s/\s\+$//<CR>
