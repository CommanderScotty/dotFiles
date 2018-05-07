"===================================================================="
"======================= [ General Behavior ] ======================="
"===================================================================="

set mouse=a
set foldcolumn=1
set foldmethod=syntax
set foldlevelstart=20
set ruler
set number
set shiftwidth=4
set tabstop=4
set noexpandtab
set cursorline
set autoindent
set smartindent
set showmatch
"set syntax=on

:colorscheme itsasoa

"===================================================================="
"========================== [ Auto Close ] =========================="
"===================================================================="

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"inoremap (      ()<Left>

"inoremap "      ""<Left>

"inoremap '      ''<Left>

"===================================================================="
"=========================== [ Vim-Plug ] ==========================="
"======================== [ Plugin Manager ] ========================"
"===================================================================="

" If this is the first time you are using vim-plug on this machine
" it will create the required file structure
" :PlugInstall to run vimplug
if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" List of plugins for vim-plug to install
" Format is Plug 'git repo'
call plug#begin('~/.vim/plugged')
"Plug 'scrooloose/syntastic'
"Plug 'airblade/vim-gitgutter'
"Plug 'majutsushi/tagbar'
"Plug 'mbbill/undotree'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'rhysd/vim-clang-format'
"Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

"===================================================================="
"=========================== [ Key Maps ] ==========================="
"===================================================================="

map <C-n> :NERDTreeToggle<CR>

"===================================================================="
"====================== [ .vimrc Auto Reload ] ======================"
"========================= [ :w To Reload ] ========================="
"===================================================================="

augroup reload_vimrc
autocmd!
autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
