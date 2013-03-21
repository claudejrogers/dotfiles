set nocompatible
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set guioptions-=T
if has("gui_running")
    set lines=60
    set columns=100
else
    set mouse=a
endif
set number
set ruler
set autoread
set smartindent
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set linespace=0
set backspace=eol,start,indent      "Allow backspace in insert mode
set textwidth=0
"Terminal cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set hidden                          "Allow buffer switching w/o saving
set guifont=Menlo:h12
" python-mode
let g:pymode_folding = 0
let g:pymode_rope_guess_project = 0
" UI stuff
set showmode                        " display current mode
set cursorline                      " highlight current line
if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd
endif
if has('statusline')
    set laststatus=2
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    "set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
" NERDTree
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
" let g:pymode_lint_write = 0
let g:pymode_rope = 0
autocmd FileType html set tabstop=2 shiftwidth=2 softtabstop=2
nmap ,f :FufFile<CR>
