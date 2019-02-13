set nocompatible

" Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'elzr/vim-json'
  Plugin 'fatih/vim-go'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'janko-m/vim-test'
  Plugin 'rodjek/vim-puppet'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'hashivim/vim-terraform'
  Plugin 'fatih/vim-hclfmt'
  Plugin 'PProvost/vim-ps1'
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
autocmd BufNewFile,BufRead *.sh.tpl set filetype=sh
autocmd BufNewFile,BufRead *.ps1.tpl set filetype=ps1
autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy
autocmd BufNewFile,BufRead *.md setlocal spell textwidth=80 filetype=markdown
autocmd Filetype gitcommit setlocal spell textwidth=72

" vim-json conig
let g:vim_json_syntax_conceal = 0

" terraform-vim setup
let g:terraform_fmt_on_save = 1
let g:terraform_align = 1
let g:terraform_fold_sections = 1
let g:terraform_remap_spacebar = 1

" Aliases
com! FormatJSON %!python -m json.tool

match ErrorMsg '\s\+$'
map <leader>c :%s/\s\+$//<CR>

hi clear SpellBad
hi SpellBad cterm=underline

" Disable the directory banner at the top of netrw
let g:netrw_banner = 0
