"""""""""""""""""""""""""""""""""""""""""""""""""
" Built in netrw file browser ':Sex'

let g:netrw_liststyle = 3       " tree view
" let g:netrw_browse_split = 4    " open files in previous window
" let g:netrw_winsize = 30
" let g:netrw_altv=1              " open splits to right
let g:netrw_banner=0            " disable banner


"""""""""""""""""""""""""""""""""""""""""""""""""
" airline
let g:airline#extentions#tabline#enabled = 1
let g:airline#extentions#tabline#show_buffers = 0
let g:airline#extentions#tabline#tab_nr_type = 1
let g:airline#extentions#tabline#fnamemod = ":t"
let g:airline_theme = 'solarized'

let g:airline#extensions#keymap#enabled = 0
let g:airline_detect_spelllang = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
" Use deoplete.
set completeopt-=preview
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/Users/micha/miniconda3/bin/python3'

" use ctrl-j / ctrl-k for navigation
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
" let g:NERDTreeShowHidden = 1
" let g:NERDTreeMapActivateNode = "<CR>"
" let file_name = expand("%:p")
" nnoremap <C-e> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,f :Files<CR>
nnoremap <silent> ,l :Lines<CR>
set rtp+=~/install/fzf

"""""""""""""""""""""""""""""""""""""""""""""""""
" vim markdown
let g:markdown_fenced_languages = ['vim', 'python']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
