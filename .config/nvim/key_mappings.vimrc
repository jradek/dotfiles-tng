" disable arrow keys
" noremap <Up> <Nop> " :echo "use k"
" noremap <Down> <Nop> " :echoe "use j"
" noremap <Left> <Nop> " :echoe "use h"
" noremap <Right> <Nop> " :echoe "use l"

"This unsets the "last search pattern" register by hitting return
" see: https://stackoverflow.com/a/662914
nnoremap <C-L> :noh<CR><C-L>

" map : to ; because it is far easier to type and ; isn't used anyway (only for backward search in current line)
nnoremap ; :
nnoremap : ;

" switch buffers
nnoremap <TAB> :bnext<CR>
nnoremap <s-TAB> :bprevious<CR>

" change leader from \ to <space>
nnoremap <Space> <Nop>
let mapleader=" "

" simple save
nnoremap <leader>w :w<CR>

" move visual lines
noremap <silent> k gk
noremap <silent> j gj

if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
    " alternate esc
    inoremap jk <esc>
    inoremap kj <esc>

    " move one left in insert mode, usefull in autocompletion with brackets
    " inoremap jj <right>
endif


" smooth scrolling
nnoremap <C-j> 10jzz
nnoremap <C-k> 10kzz

" skip over closing parenthesis in insert mode
" see: https://vim.fandom.com/wiki/Automatically_append_closing_characters
" inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
