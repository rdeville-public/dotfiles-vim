" # Description

" File hosting list of plugin dedicated to improve Vim/NeoVim TUI
" This file is source by file ../plugins.vim

" ## `vim-devicons`
  " Adds icons to your plugins
  "
  " Source: https://github.com/ryanoasis/vim-devicons
  Plug 'ryanoasis/vim-devicons'

" ## `vista`
  " A class outline viewer for Vim which support LSP
  "
  " Source: https://github.com/liuchengxu/vista.vim
  Plug 'liuchengxu/vista.vim'

" ## `markdown2ctags`
  " Generate ctags-compatible tags files for Markdown documents
  "
  " Source: https://github.com/jszakmeister/markdown2ctags
  Plug 'jszakmeister/markdown2ctags',
  \{
    \'for': 'markdown',
  \}

" ## `vim-airline`
  " Lean & mean status/tabline for vim that's light as air.
  "
  " Source: https://github.com/vim-airline/vim-airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" ## `fzf`
  " Fuzzy finder in Vim
  "
  " Source: https://github.com/junegunn/fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" ## `https://github.com/skywind3000/vim-quickui`
"Plug 'skywind3000/vim-quickui'

" ## `vim-over`
  " Preview susbtitue command (i.e. :s/{pattern}/{replace/})
  "
  " Source: https://github.com/osyo-manga/vim-over
  Plug 'osyo-manga/vim-over'

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
