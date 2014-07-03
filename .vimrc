set nocompatible

" Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/vundle'
  Plugin 'thoughtbot/vim-rspec'
  Plugin 'elzr/vim-json'
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

set visualbell
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set colorcolumn=80
set nowrap
set backspace=indent,eol,start
set textwidth=80

map <CR> :noh<CR>

autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd Filetype gitcommit setlocal spell textwidth=72
au BufRead,BufNewFile *.md setlocal spell textwidth=80

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
