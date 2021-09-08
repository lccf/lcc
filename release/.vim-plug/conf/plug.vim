" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim-plug')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
" Syntax
Plug 'leafOfTree/vim-vue-plugin'
Plug 'lccf/vim-coloresque'
Plug 'leafgarland/typescript-vim'

" Color
" Lucius
Plug 'vim-scripts/Lucius'
" Color Schema Explorer
Plug 'vim-scripts/Color-Scheme-Explorer'

" Indent
" Tabular
Plug 'godlygeek/tabular'

" Tools
" NerdTree
Plug 'preservim/nerdtree'
" NerdCommenter
Plug 'preservim/nerdcommenter'
Plug 'tomtom/tcomment_vim'
" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
" Air Line
Plug 'vim-airline/vim-airline'
" fugitive
Plug 'tpope/vim-fugitive'
" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" CocInstall coc-json coc-tsserver

call plug#end()
