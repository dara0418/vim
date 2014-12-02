" Vundle Settings.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Ultisnip.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<F3>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" End of Ultisnip.


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
set t_Co=256

set laststatus=2
set noshowmode
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set pastetoggle=<F2>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<C-P>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
"nmap <C-P> :CtrlPLastMode --dir<CR>

autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml

set hlsearch
syntax enable

" Color scheme
set background=dark
colorscheme solarized

" Do not set background.
hi Normal ctermbg=NONE
set timeout timeoutlen=5000 ttimeoutlen=100

set omnifunc=syntaxcomplete#Complete

set autochdir
set ignorecase
set infercase
set smartcase
set incsearch
set number

set cindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set list
set listchars=tab:>.,trail:~

set hidden

"nmap <C-H> <C-W>h
"nmap <C-J> <C-W>j
"nmap <C-K> <C-W>k
"nmap <C-L> <C-W>l

nmap ## :vsp<RETURN>
nmap !! :sp<RETURN>

nmap <LEFT>  :bp<CR>
nmap <RIGHT> :bn<CR>
ca   bc      :Bclose

nmap <A-1> :tabnext 1<CR>
nmap <A-2> :tabnext 2<CR>
nmap <A-3> :tabnext 3<CR>
nmap <A-4> :tabnext 4<CR>
nmap <A-5> :tabnext 5<CR>
nmap <A-6> :tabnext 6<CR>
nmap <A-7> :tabnext 7<CR>

nmap \n :tabnext<CR>

nmap <C-N> :NERDTreeToggle %<CR>
nmap <C-H> \\b
nmap <C-J> \\j
nmap <C-K> \\k
nmap <C-L> \\w
vmap <C-H> \\b
vmap <C-J> \\j
vmap <C-K> \\k
vmap <C-L> \\w
nmap \f \bs
nmap \v \bv
nmap \e \be

ca tn tabnew
ca th tabp
ca tl tabn

vmap <F4> \t=
vmap <F5> \t:
nmap <F7> :%s/\s\+$//<CR>
nmap <F8> :set tabstop=2 <bar> set shiftwidth=2 <bar> set expandtab <bar> retab<CR>
nmap <F9> :edit! <bar> redraw!<CR>
nmap <F10> :so ~/.vimrc<CR>

set backspace=indent,eol,start
let g:scala_use_default_keymappings=0

runtime! ftplugin/man.vim

let g:SuperTabDefaultCompletionType = "<c-p>"

" Disable ZZ save and quit, never use this feature,
" in stead, it often cause the vim quit unexpectly.
nmap ZZ zz
ca et :set expandtab <bar> retab
ca nt :set noexpandtab <bar> retab!
