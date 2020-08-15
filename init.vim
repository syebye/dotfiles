" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'morhetz/gruvbox'

Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()

" let g:gruvbox_termcolors=256
" let g:gruvbox_contrast_dark="medium"

" Colorschemes
" colorscheme gruvbox
colorscheme desert
set background=dark

" Keymaps
inoremap kj <Esc>

" clipbard
set clipboard=unnamed
