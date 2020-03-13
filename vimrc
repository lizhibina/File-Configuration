" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
"定义leader
let mapleader=","
"配置自动生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"高亮显示行号
syntax on
set nu!
" 使用 jj  进入 normal 模式
inoremap jj <Esc>

" 高亮搜索
set hlsearch
"
set showcmd
"鼠标行高亮
set cursorline
"北京黑色
set background=dark

set autoindent
"绑定快捷键
:inoremap ) ()<Esc>i
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap } {}<Esc>i
:inoremap [ []<Esc>i


:inoremap ] []<Esc>i
:inoremap < <><Esc>i
:inoremap > <><Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-g> <Left>
inoremap <C-l> <Right>

noremap <space> :
"移动到行未
nnoremap 9 $

"nerdTree
noremap <leader>g :NERDTreeToggle<CR>
noremap <leader>v :NERDTreeFind<CR>

"vim-easymotion
nmap s <Plug>(easymotion-s2)			
nmap t <Plug>(easymotion-t2)

let NERDTreeShowHidden=0
let g:ctrlp_map = '<c-p>'

"更新时间
set updatetime=100

"Tagbar
nnoremap <leader>t :TagbarToggle<CR>

"plug
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'klen/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'frazrepo/vim-rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'altercation/solarized'
Plug 'w0ng/vim-hybrid'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'

call plug#end()
