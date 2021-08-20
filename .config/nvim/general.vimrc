syntax on

filetype plugin indent on
language en_US

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

autocmd FileType markdown setlocal shiftwidth=2 tabstop=2

set laststatus=2
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
set scrolloff=5

" set list listchars=tab:»·,trail:·,nbsp:·,eol:¬
set list listchars=tab:»·,trail:·,nbsp:·
set conceallevel=0  " show all characters

" spell checking
" set spelllang=en_us ",de_de
" set spell
" hi SpellBad cterm=reverse

set noshowmode      " get rid of unnecessary, -- INSERT -- in status line

""""""""""""""""""
" color scheme stuff
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set background=dark

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE


"" GRUXBOX
" colorscheme gruvbox

" if (has("termguicolors"))
"  set termguicolors
" endif

"" OCEANIC
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

let g:solarized_termcolors=256

"" NORD
colorscheme nord

" change visual highlight color
" hi Visual ctermbg=LightBlue ctermfg=White
" completion window color
" hi PMenu ctermfg=White

"" PaperColor

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.light': {
  \       'transparent_background': 1,
  \       'allow_bold': 1,
  \       'allow_italic': 1
  \     }
  \   }
  \ }

"""""""""""""""""""
" other stuff
" set number
" set relativenumber

set ignorecase
set smartcase       " case handling for search terms
set smartindent     " smart indention when starting new line
set showmatch       " Show matching brackets.

set incsearch
set hlsearch
set ruler           " show cursor at bottom
set colorcolumn=80

" set cursorline    " highlight current line

set linebreak       " display setting: break long lines, but do not insert EOL

set showcmd

set wildmenu
set wildmode=list:longest,list:full

set backspace=indent,eol,start

" Enable mouse
set mouse=a
" copy and paste
set clipboard=unnamedplus

set splitbelow
set splitright

set pumheight=10
set updatetime=100

" Status-line
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" create backup of file with time stamp
"
" see also: https://superuser.com/a/1135296

function! BackupDir()
   set backup

   if has('win32') || has('win64')
      let l:backupdir=$VIM.'/backup/'.
               \substitute(expand('%:p:h'), '\:', '~', '')
   else
      let l:backupdir=$HOME.'/.local/share/nvim/backup/'.
               \substitute(expand('%:p:h'), '^'.$HOME, '~', '')
   endif

   if !isdirectory(l:backupdir)
      call mkdir(l:backupdir, 'p', 0700)
   endif

   let &backupdir=l:backupdir
   let &backupext=strftime('_%Y-%m-%d_%H-%M-%S')
endfunction



" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" encryption/decryption
"
" See also: https://www.tomasperez.com/symmetric-encryption-vim-gpg/

" Transparent editing of gpg files for symmetric encryption.
" Forked and modified from an original implementation by Wouter Hanegraaff.
" @see http://vim.wikia.com/wiki/Encryption
" augroup encrypted
"     au!

"     " create a backup of the encrypted file, just in case writing fails
"     autocmd BufReadPre,FileReadPre *.gpg call BackupDir()

"     " Avoid writing to ~/.viminfo while editing
"     autocmd BufReadPre,FileReadPre *.gpg set viminfo=
"     autocmd BufReadPre,FileReadPre *.gpg set noswapfile noundofile "nobackup
"     autocmd BufReadPre,FileReadPre *.gpg set bin
"     autocmd BufReadPre,FileReadPre *.gpg let ch_save = &ch|set ch=2

"     " Switch to normal mode for editing
"     autocmd BufReadPost,FileReadPost *.gpg '[,']!gpg2 --decrypt --no-use-agent 2> /dev/null
"     autocmd BufReadPost,FileReadPost *.gpg set nobin
"     autocmd BufReadPost,FileReadPost *.gpg let &ch = ch_save|unlet ch_save
"     autocmd BufReadPost,FileReadPost *.gpg execute ":doautocmd BufReadPost " . expand("%:r")

"     " Encrypt text before writing
"     autocmd BufWritePre,FileWritePre *.gpg '[,']!gpg2 --armor --symmetric --yes --cipher-algo AES256 2> /dev/null
"     autocmd BufWritePost,FileWritePost *.gpg u
" augroup END
