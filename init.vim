let mapleader="\<SPACE>"

set mouse=a

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
"set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set noerrorbells        " No beeps.
"set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set clipboard+=unnamedplus

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
"
if !&scrolloff
set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
"     set nostartofline       " Do not jump to first character with page
"     commands.
"
"if &listchars ==# 'eol:$'

"set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"  endif
"  set list!
  set ignorecase          " Make searching case insensitive
  set smartcase           " ... unless the query has capital letters.
  set gdefault            " Use 'g' flag by default with :s/foo/bar/.
  set magic               " Use 'magic' patterns (extended regular expressions).


"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
    set runtimepath+=/home/bug/.config/nvim/bundle/neobundle.vim/
    endif

    " Required:
    call neobundle#begin(expand('/home/bug/.config/nvim/bundle'))

    " Let NeoBundle manage NeoBundle
    " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

    " Add or remove your Bundles here:
    NeoBundle 'Shougo/deoplete.nvim'
    NeoBundle 'zchee/deoplete-clang'
    NeoBundle 'zchee/deoplete-jedi'
    NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/neosnippet-snippets'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'ctrlpvim/ctrlp.vim'
    NeoBundle 'flazz/vim-colorschemes'
    NeoBundle 'vim-airline/vim-airline'
    NeoBundle 'vim-airline/vim-airline-themes'
    NeoBundle 'scrooloose/nerdtree'
    " You can specify revision/branch/tag.
    NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

    " Required:
    call neobundle#end()

    " Required:
    filetype plugin indent on

    " If there are uninstalled bundles found on startup,
    " this will conveniently prompt you to install them.
    NeoBundleCheck
    "End NeoBundle Scripts-------------------------

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '::'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '::'
let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
"let g:airline_left_sep = '▶'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '::'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '::'
let g:airline_theme= 'term'
"let g:airline_powerline_fonts = 1
" deoplete + neosnippet + autopairs
 let g:AutoPairsMapCR=0
 let g:deoplete#sources#clang#libclang_path = "/usr/lib64/libclang.so"
 let g:deoplete#sources#clang#clang_header = "/usr/lib64/clang"
 let g:deoplete#enable_at_startup = 1
 let g:deoplete#enable_smart_case = 1
 imap <expr><TAB> pumvisible() ? "\<C-j>" :neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" :"\<TAB>"
 imap <expr><S-TAB> pumvisible() ? "\<C-k>" : "\<S-TAB>"
 inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 map <C-n> :NERDTreeToggle<CR>
 map <C-l> :tabnext <CR>
 map <C-h> :tabprev <CR>
 map <C-w> :tabclose <CR>
 nmap <F5> :make <CR>
set completeopt-=preview

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

colorscheme desert
