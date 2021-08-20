"" Modularize your vimrc
" https://www.gregjs.com/vim/2016/do-yourself-a-favor-and-modularize-your-vimrc-init-vim/

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.local/share/nvim/plugged')

" Better Comments with 'gcc' command
Plug 'tpope/vim-commentary'
" Surround
Plug 'tpope/vim-surround'

" color schemes

Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
" nice light color scheme for writing
Plug 'NLKNguyen/papercolor-theme'

if exists('g:vscode')

" extension active when VSCode is used

else
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'

" Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'vim-pandoc/vim-pandoc-syntax'

" Plug 'bronson/vim-trailing-whitespace'
" Plug 'tpope/vim-markdown', {'for': 'markdown'}   " markdown syntax highlight
" Plug 'tpope/vim-markdown'
" Plug 'scrooloose/nerdtree'
" Plug 'zchee/deoplete-jedi'

    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS

    Plug 'Yggdroot/indentLine'  " indention lines
    Plug 'itchyny/lightline.vim'

    Plug 'easymotion/vim-easymotion'
    Plug 'ervandew/supertab'

    if has('nvim')
        Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
        Plug 'deoplete-plugins/deoplete-jedi'
    else
        " nothing
    end

" Intellisense
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'davidhalter/jedi-vim'

    Plug 'kien/rainbow_parentheses.vim'

    Plug 'dense-analysis/ale'
    Plug 'lervag/vimtex'

" Plug 'tpope/vim-fugitive'

"    Plug 'vimwiki/vimwiki'

" git gutter
    Plug 'mhinz/vim-signify'

" plaint text accounting
    " Plug 'nathangrigg/vim-beancount'

" grammar checker
    " Plug 'dpelle/vim-LanguageTool'

endif


call plug#end()

source $HOME/.config/nvim/general.vimrc
source $HOME/.config/nvim/key_mappings.vimrc
source $HOME/.config/nvim/plugin_conf.vimrc
" source $HOME/.config/nvim/plugin_coc_conf.vimrc
source $HOME/.config/nvim/my_extensions.vimrc
