"common
inoremap jj <Esc>
let mapleader = ' '
"to prevent anormal space moves
noremap <Space> <Nop>  


"set:
set autochdir                         "change current dirs auto
set nocompatible                      " be improved, required
set laststatus=2
set tags=tags;                        " trails for tag file till home
set t_co=256                          " 256 colors terminal
set background=dark
set autoread                          " auto reload changed files
set wildmenu                          " tab autocomplete in command mode
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set clipboard=unnamed                 " clipboard support (osx)
set laststatus=2                      " show status line on startup
set splitright                        " open new splits to the right
set splitbelow                        " open new splits to the bottom
set lazyredraw                        " reduce the redraw frequency
set ttyfast                           " send more characters in fast terminals"
set nowrap                            " don't wrap long lines
set listchars=extends:→               " show arrow if line continues rightwards
set listchars+=precedes:←             " show arrow if line continues leftwards
set nobackup nowritebackup noswapfile " turn off backup files
set noerrorbells novisualbell         " turn off visual and audible bells
set expandtab shiftwidth=2 tabstop=2  " two spaces for tabs everywhere
set history=500
set hlsearch                          " highlight search results
set ignorecase smartcase              " search queries intelligently set case
set incsearch                         " show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " remove timeout when hitting escape
set showcmd                           " show size of visual selection
set pastetoggle=<F9>
set list
set number            " enable line numbers
set scrolloff=5       " leave 5 lines of buffer when scrolling
set sidescrolloff=10  " leave 10 characters of horizontal buffer when scrolling
set t_ut=""           " to prevent color filling up gates (about colorschemes)
set ttyscroll=1       " also to prevent color filling up gates (about colorschemes)  



highlight comment cterm=italic gui=italic   " showcase comments in italics
"let python_highlight_all=1
"set foldcolumn=3
"set statusline =%1*\ %n\ %*            "buffer number
"set statusline +=%2*/%l%*               "total lines
"set mouse=a                          " enables mouse in all modes
"interface
"AU
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent fileformat=unix

"BUFFERS AND TABS:
set hidden          "makes buffers hidden
nnoremap <leader>bn :enew<cr>
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr> 
nnoremap <leader>bq :bp <BAR> bd #<cr>   "Close the current buffer and move to the previous one.
nnoremap <leader>d :bd<cr>
nnoremap <leader>j :ls<cr>
nnoremap <leader>bb :buffers<CR>:buffer<Space>
noremap <leader>rr :e $HOME/.vimrc<cr>
noremap <leader>t :tabnew<cr>

"SPLIT NAVIGATIONS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nnoremap <C-]> g<C-]>



"PLUGINS:
"vundle:
filetype off                  " required
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"add plugins here:


Plugin 'jeetsukumaran/vim-indentwise'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'itchyny/lightline.vim'
"changing column number to total line number(right bottom)
let g:lightline = {
      \ 'component': {
      \   'lineinfo': "%{line('.') . '/' . line('$')}",
      \ },
      \ }

Plugin 'kien/ctrlp.vim'
" setup some default ignores
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pm :CtrlPMixed<cr>
nnoremap <leader>m :CtrlPMRU<cr>

Plugin 'majutsushi/tagbar'
nnoremap <F10> :TagbarToggle<CR>

Plugin 'scrooloose/nerdtree'
noremap <F4> :NERDTreeToggle<CR>

"if making a change on colorscheme put it before colorscheme line.
Plugin 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox


"Plugin 'tpope/vim-fugitive'

"Plugin 'tomasr/molokai'
"let g:molokai_original = 1
"colorscheme molokai

"Plugin 'toupeira/vim-desertink'
"colorscheme desertink

"Plugin 'tmhedberg/SimpylFold'              "uninstalled
"let g:SimpylFold_docstring_preview=1

"Plugin 'vim-airline/vim-airline'             "uninstalled
"let g:airline#extensions#tabline#enabled = 1

"Plugin 'powerline/powerline'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"see :h vundle for more details or wiki for FAQ









