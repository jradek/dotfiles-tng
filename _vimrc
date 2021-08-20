" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" toogle configurtion, possible values
" * 'Work_Desktop'      Win7
" * 'Work_Notebook'     Win8
" * 'Private_Notebook'  Debian
let s:MyConfiguration = 'Work_Desktop'

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    syntax on
endif

" Bundles {{{1

filetype off "required by Vundle
" set the runtime path to include Vundle and initialize

if s:MyConfiguration == 'Work_Desktop'
    set rtp+=D:/vim/vimfiles/bundle/Vundle.vim/
    let path='D:/vim/vimfiles/bundle'
elseif s:MyConfiguration == 'Work_Notebook'
    set rtp+=~/Vim/vimfiles/bundle/Vundle.vim/
    let path='~/Vim/vimfiles/bundle'
elseif s:MyConfiguration == 'Private_Notebook'
    set rtp+=~/.vim/bundle/Vundle.vim/
endif

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Define bundles via Github repos

" color shemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'croaky/vim-colors-github'

" file explorer
Plugin 'scrooloose/nerdtree'

" buffer explorer
Plugin 'jeetsukumaran/vim-buffergator'

" fancy status line
Plugin 'bling/vim-airline'

" Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

" }}}1


" Enable file type detection.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Options {{{1
" tabs and spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

set laststatus=2    " Always show the statusline

set encoding=utf-8  " Necessary to show Unicode glyphs
set fileencodings=utf-8
set fileformats=unix,dos,mac

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·,eol:¬

" Color scheme {{{2

" colorscheme github
" highlight NonText guibg=#060606
" highlight Folded guibg=#0A0A0A guifg=#9090D0

if has("win32")
    colorscheme desert
elseif has("unix")
    colorscheme industry

    " colorscheme moria

    " set t_Co=256
    " colorscheme moria

    " colorscheme lucius
endif

" }}}2


set textwidth=100   " Make it obvious where 100 characters is
set colorcolumn=+1

set number          " show line numbers
set numberwidth=4

set smartcase       " case handling for search terms
set smartindent     " smart indention when starting new line
set showmatch       " Show matching brackets.

set incsearch
set nohlsearch
set ruler           " show cursor at bottom
set cursorline      " highlight current line

set foldmethod=syntax
set foldlevelstart=20

set linebreak       " display setting: break long lines, but do not insert EOL

set showcmd

set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,*.so,*.a

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
"}}}1


" GUI settings {{{1
if has("gui_running")
    set guioptions-=T
    set guioptions-=r
    set guioptions-=m

    colorscheme lucius

    if has("win32")
        set guifont=Lucida_Console:h10
        LuciusDarkLowContrast
    endif
endif

" airline statusbar settings {{{1
let g:airline_powerline_fonts=0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = ['trailing']

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"}}}1


" backups {{{1
if has("vms")
    set nobackup  " do not keep a backup file, use versions instead
else
    if s:MyConfiguration == 'Work_Desktop'
        " use backups
        " source
        "   http://stackoverflow.com/a/15317146
        set backup
        set writebackup
        set backupdir=D:/vim/backup//

        " Use a specified swap folder
        " source
        "   http://stackoverflow.com/a/15317146
        set directory=D:/vim/swap//
    else
        set nobackup
        set noswapfile
    endif
endif
"}}}1


" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Special files {{{1
augroup MyCommands
au!

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=4 tabstop=4 softtabstop=0

" Enforce markdown for md files instead of Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd BufNewFile,BufReadPost *.reqif set filetype=xml

" disable beeping/flashing in GUI
autocmd GUIEnter * set noerrorbells visualbell t_vb=

augroup END


" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

augroup END

"}}}1



"" mappings

" remap esc i.e. leaving the insert mode
inoremap <ESC> <nop>
inoremap jk <ESC>

" Get off my lawn: disable cursor keys to learn the hard way!
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

"" some toggleables

nnoremap <F3> :BuffergatorToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>

" functions {{{1

" remove trailing white spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

"}}}1
"

" vim: foldmethod=marker
