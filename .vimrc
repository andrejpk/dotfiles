if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-easy-align'
"Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
"Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

syntax on
set number
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost
" $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)

if (empty($TMUX))
  if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 <
      "https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
   endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 <
 "        https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
 "        >
 "Based on Vim patch 7.4.1770 (`guicolors`
     "          option) <
     "          https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
      "          >
      "            " <
      "            https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
      "            >
    if (has("termguicolors"))
       set termguicolors
    endif
endif

syntax on
colorscheme onedark
set laststatus=2
set tabstop=2
set expandtab
set relativenumber

:imap jj <Esc>
