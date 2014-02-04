set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'kien/ctrlp.vim'
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Tab completions
Bundle 'ervandew/supertab'
" Molokai theme
Bundle 'tomasr/molokai'
filetype plugin indent on     " required!

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" No arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nmap  <Up>    :!x-www-browser "http://www.youtube.com/watch?v=dQw4w9WgXcQ"<CR>
nmap  <Down>  :!x-www-browser "http://www.youtube.com/watch?v=dQw4w9WgXcQ"<CR>
nmap  <Left>   :!x-www-browser "http://www.youtube.com/watch?v=dQw4w9WgXcQ"<CR>                                                                                                                          
nmap  <Right>  :!x-www-browser "http://www.youtube.com/watch?v=dQw4w9WgXcQ"<CR>
" ================

" Buffer switching
map <leader>p :bp<CR>  
map <leader>n :bn<CR> 
map <leader>d :bd<CR>

syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
