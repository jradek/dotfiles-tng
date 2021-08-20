" Modularize your vimrc
" https://www.gregjs.com/vim/2016/do-yourself-a-favor-and-modularize-your-vimrc-init-vim/

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.local/share/nvim/plugged')

" color schemes
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
" Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'


Plug 'junegunn/fzf.vim'

Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-markdown', {'for': 'markdown'}   " markdown syntax highlight
" Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'  " indention lines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'zchee/deoplete-jedi'

Plug 'tpope/vim-commentary'  "commenting with gcc command
Plug 'tpope/vim-surround'
Plug 'kien/rainbow_parentheses.vim'

" Initialize plugin system
call plug#end()

source $HOME/.config/nvim/general.vimrc
source $HOME/.config/nvim/key_mappings.vimrc
source $HOME/.config/nvim/plugin_conf.vimrc
source $HOME/.config/nvim/my_extensions.vimrc
