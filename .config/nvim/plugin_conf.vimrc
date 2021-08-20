"""""""""""""""""""""""""""""""""""""""""""""""""
" Built in netrw file browser ':Sex'

let g:netrw_liststyle = 3       " tree view
" let g:netrw_browse_split = 4    " open files in previous window
" let g:netrw_winsize = 30
" let g:netrw_altv=1              " open splits to right
let g:netrw_banner=0            " disable banner


"""""""""""""""""""""""""""""""""""""""""""""""""
"in lightline
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ }


"""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab
"
" change traversal from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"

"""""""""""""""""""""""""""""""""""""""""""""""""
" limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'


"""""""""""""""""""""""""""""""""""""""""""""""""
" Use deoplete.

set completeopt-=preview
let g:deoplete#enable_at_startup = 1

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" use ctrl-j / ctrl-k for navigation
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_lint_delay = 2000

let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'python': ['flake8', 'mypy', 'pylint']
\}

" remove_trailing_lines
let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'python': ['black'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}



"""""""""""""""""""""""""""""""""""""""""""""""""
" vimtex
let g:tex_flavor  = 'latex'
let g:vimtex_compiler_latexmk = {
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk'
    \}


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
nnoremap <silent> ,l :BLines<CR>
set rtp+=~/install/fzf


"""""""""""""""""""""""""""""""""""""""""""""""""
" vim markdown
let g:markdown_fenced_languages = ['vim', 'python']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


"""""""""""""""""""""""""""""""""""""""""""""""""
" indentline
let g:indentLine_fileTypeExclude = ['markdown']
let g:indentLine_setConceal = 0

"""""""""""""""""""""""""""""""""""""""""""""""""
" vim wiki
" see: https://gist.github.com/maikeldotuk/54a91c21ed9623705fdce7bab2989742
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'path_html': '~/vimwiki_html/',
                      \ 'syntax': 'markdown',
                      \ 'ext': '.md',
                      \ 'template_path': '~/.config/nvim/',
                      \ 'template_default': 'vimwiki_github_template',
                      \ 'template_ext': '.html5',
                      \ 'custom_wiki2html': '~/.config/nvim/vimwiki_to_html5.sh' }]

"""""""""""""""""""""""""""""""""""""""""""""""""
" easy motion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <Leader>s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Move to word
map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)

" Move to line
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

