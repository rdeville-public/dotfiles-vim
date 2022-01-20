" # Description

" File hosting list of plugins that provide tools when coding

" ## `editorconfig-vim`
  " Add support of editorconfig in vim
  "
  " Source: https://github.com/editorconfig/editorconfig-vim
  Plug 'editorconfig/editorconfig-vim'

" ## `coc`
  " Nodejs extension host for vim & neovim, load extensions like VSCode and host
  " language servers.
  "
  " Source: https://github.com/neoclide/coc.nvim
  Plug 'neoclide/coc.nvim',
  \{
    \ 'branch': 'release',
  \}

" ## `fugitive`
  " Git wrapper for Vim
  "
  " Source:       https://github.com/tpope/vim-fugitive
  Plug 'tpope/vim-fugitive'

" ## `workspace`
  " 📑 Automated Vim session management with file auto-save and persistent undo history
  "
  " Source: https://github.com/thaerkh/vim-workspace
  Plug 'thaerkh/vim-workspace'

" ## `localrc`
  " Search local vimrc file in tree an load them
  "
  " Source: https://github.com/thinca/vim-localrc
  Plug 'thinca/vim-localrc'

" ## `vagrant`
  " Basic vim/vagrant integration
  "
  " Source: https://github.com/hashivim/vim-vagrant
  Plug 'hashivim/vim-vagrant'

" ## `committia`
  " A Vim plugin for more pleasant editing on commit messages
  "
  " Source: https://github.com/rhysd/committia.vim
  Plug 'rhysd/committia.vim'

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
