set nocompatible

" Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/vundle'
  Plugin 'thoughtbot/vim-rspec'
  Plugin 'elzr/vim-json'
  Plugin 'tpope/vim-cucumber'
  Plugin 'fatih/vim-go'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'elixir-lang/vim-elixir'
  Plugin 'kien/ctrlp.vim'
  Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" Solarized config
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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
autocmd BufNewFile,BufRead *.md setlocal spell textwidth=80 filetype=markdown
autocmd BufNewFile,BufRead *.feature setlocal spell textwidth=80 filetype=gherkin
autocmd BufNewFile,BufRead *.tex setlocal spell textwidth=80
autocmd Filetype gitcommit setlocal spell textwidth=72

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
