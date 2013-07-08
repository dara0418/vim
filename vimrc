execute pathogen#infect()
filetype plugin indent on

autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml
syntax enable
"set background=dark
"colorscheme solarized
set t_Co=256

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set autochdir
set ignorecase
set infercase
set smartcase
set incsearch
set hls
set number

set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set list
set listchars=tab:>.,trail:~

set hidden

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

nmap @@ :vsp<RETURN>
nmap !! :sp<RETURN>
nmap ## :wq<RETURN>

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

imap <C-Q> <C-X><C-O>

ca tn tabnew
ca th tabp
ca tl tabn
