syntax on
" set color theme
"colorscheme blackboard
colorscheme busybee

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'thoughtbot/vim-rspec'
Bundle 'ack.vim'
Bundle 'comments.vim'
Bundle 'ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'rspec.vim'
Bundle 'honza/vim-snippets'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-bundler'
Bundle 'kchmck/vim-coffee-script'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'briancollins/vim-jst'
Bundle 'plasticboy/vim-markdown'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'sudo.vim'
Bundle 'xml.vim'
Bundle 'ZenCoding.vim'



filetype plugin indent on

"auto completed
"RUBY
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

"RUBY plugin
autocmd FileType ruby compiler ruby

"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * NER

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"显示行号  
set number

"忽略大小写查找
set ic

" tab宽度  
set tabstop=2  
set cindent shiftwidth=2  
set autoindent shiftwidth=2 

" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

"set my leader
let mapleader=","
let g:mapleader=","

"tabs
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"  映射NERDTree插件
":map <leader>n :NERDTree<CR>  
"let loaded_nerd_tree = 1
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree=1
let g:NERDTreeWinSize = 18 
map <leader>f :NERDTreeToggle<CR>

"switch window
:map <leader>w <C-W>w

" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
imap <C-S> <C-C>:w<CR>  

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}
"set CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
"use in  edit
imap <C-A> <C-C><c-p>
"use in none edit
:map <leader>t <c-p>
:map <leader>b :CtrlPBuffer<CR>



set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <D-1> :tabprevious<CR>
:map <D-1> :tabprevious<CR>
imap <D-1> <Esc>:tabprevious<CR>i

:nmap <D-2> :tabnext<CR>
:map <D-2> :tabnext<CR>
imap <D-2> <Esc>:tabnext<CR>i


"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE
map <leader>cf :CoffeeCompile watch vert<cr>

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"ctags
set tags+=~/gitdb/rails/tags

"auto completed
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete


" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

"set powerline
set laststatus=2 
"set guifont=Powerline
"set font=Source\ Code\ Pro\:h15
set nocompatible
set t_Co=256
let g:Powerline_cache_enabled = 1

"minitest
set completefunc=syntaxcomplete#Complete

"process past
set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>



