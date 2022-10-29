" # Description
" File hosting list of plugin to install and when to run them

function! UpdateCoc(info)
  !g:new_rtp . '/plugins/coc/merge_settings.sh'
  :CocUpdate
endfunction

  " Start vim-plug list of plugin, and tell it where to download plugins.
  " Make sure you use single quotes.
call plug#begin(vimrc_basedir . '/.installed_plugins')

" # Interface
    " List of plugin dedicated to improve Vim/NeoVim TUI

  " ## `vista`
    " A class outline viewer for Vim which support LSP
    " Source: https://github.com/liuchengxu/vista.vim
  Plug 'liuchengxu/vista.vim'

  " ## `vim-airline`
    " Lean & mean status/tabline for vim that's light as air.
    " Source: https://github.com/vim-airline/vim-airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " ## `fzf`
    " Fuzzy finder in Vim
    " Source: https://github.com/junegunn/fzf
  Plug 'junegunn/fzf',
    \{
      \'do': { -> fzf#install() }
    \}

  " ## `vim-quickui`
    " The missing UI extensions for Vim 8.2 (and NeoVim 0.4) !!
    " Source: https://github.com/skywind3000/vim-quickui
  " Plug 'skywind3000/vim-quickui'

  " ## `vim-over`
    " Preview susbtitue command (i.e. :s/{pattern}/{replace/})
    " Source: https://github.com/osyo-manga/vim-over
  Plug 'osyo-manga/vim-over'

  " ## `vim-tmux-navigator`
    " Seamless navigation between tmux panes and vim splits
    " Source: https://github.com/christoomey/vim-tmux-navigator
  Plug 'christoomey/vim-tmux-navigator'

  " ## `vim-transparent`
    " Remove all background color on Vim
    " Source: https://github.com/tribela/vim-transparent
  Plug 'tribela/vim-transparent'


  " ## `vim-hexokinase`
    " Asynchronously displaying the colours in the file
    " Source: https://github.com/rrethy/vim-hexokinase
  Plug 'rrethy/vim-hexokinase',
    \{
      \'do': 'make hexokinase'
    \}

  " MUST BE LOADED AFTER VIM-AIRLINE AND OTHER PLUGINS USING IT !
  " ## `vim-devicons`
    " Adds icons to your plugins
    " Source: https://github.com/ryanoasis/vim-devicons
  Plug 'ryanoasis/vim-devicons'

" # Integration
  " List of plugins that provide integration with external tools

  " ## `editorconfig-vim`
    " Add support of editorconfig in vim
    " Source: https://github.com/editorconfig/editorconfig-vim
  Plug 'editorconfig/editorconfig-vim'

  " ## `fugitive`
    " Git wrapper for Vim
    " Source:       https://github.com/tpope/vim-fugitive
  Plug 'tpope/vim-fugitive'

  " ## `git-blame`
    " Git Blame plugin for Neovim written in Lua
    " Source:       https://github.com/f-person/git-blame.nvim
  if has('nvim')
    Plug 'f-person/git-blame.nvim'
  endif

  " ## `workspace`
    " Automated Vim session management with file auto-save and persistent undo history
    " Source: https://github.com/thaerkh/vim-workspace
  Plug 'thaerkh/vim-workspace'

  " ## `committia`
    " A Vim plugin for more pleasant editing on commit messages
    " Source: https://github.com/rhysd/committia.vim
  Plug 'rhysd/committia.vim'

  " ## `coc`
    " Nodejs extension host for vim & neovim, load extensions like VSCode and host
    " language servers.
    " Source: https://github.com/neoclide/coc.nvim
  Plug 'neoclide/coc.nvim',
    \{
      \ 'branch': 'release',
      \ 'do': function('UpdateCoc')
    \}

  " ### `markdown-preview'
    " Markdown,RST and Textile preview
    " Source:       https://github.com/iamcco/markdown-preview.nvim
  Plug 'iamcco/markdown-preview.nvim',
    \ {
      \ 'do': 'cd app && yarn install'
    \}
  " Plug 'iamcco/markdown-preview.nvim',
  "   \{
  "     \ 'do': { -> mkdp#util#install() },
  "     \ 'for': ['markdown', 'vim-plug']
  "   \}

" # Editing
  " List of plugins making editing more confortable

  " ## `tabular`
    " Text filtering and alignement
    " Source: https://github.com/godlygeek/tabular
  Plug 'godlygeek/tabular'

  " ## `vim-indent-guides`
    " Visually displaying indent levels in Vim.
    " Source: https://github.com/nathanaelkane/vim-indent-guides
  Plug 'nathanaelkane/vim-indent-guides'

  " ## `rainbow`
    " Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast,
    " powerful configuration.
    " Source: https://github.com/luochen1990/rainbow
  Plug 'luochen1990/rainbow'

  " ## `matchtagalways`
    " Always show matching tags
    " Source: https://github.com/valloric/matchtagalways
  Plug 'valloric/matchtagalways'

  " ## `multiple-cursors`
    " Multiple selection for Vim
    " Source: https://github.com/mg979/vim-visual-multi
  Plug 'mg979/vim-visual-multi'

  " ## `nerdcommenter`
    " Comment functions so powerful—no comment necessary.
    " Source: https://github.com/scrooloose/nerdcommenter
  Plug 'preservim/nerdcommenter'

  " ## `ultisnips`
    " Snippet Engine that need Vim with python support
    " Source: https://github.com/SirVer/ultisnips
  Plug 'SirVer/ultisnips'

  " ## `snippets`
    " Community driven set of snippets for UltiSniP
    " Source: https://github.com/honza/vim-snippets
  Plug 'honza/vim-snippets'

  " ## `vim-surround`
    " Delete/change/add parentheses/quotes/XML-tags/much more with ease
    " Source: https://github.com/tpope/vim-surround
  Plug 'tpope/vim-surround'

  " ## `vim-abolish`
    " Easily search for, substitute, and abbreviate multiple variants of a word
    " Source: https://github.com/tpope/vim-abolish
  Plug 'tpope/vim-abolish'

  " ## `vim-table-mode`
    " VIM Table Mode for instant table creation.
    " Source: https://github.com/dhruvasagar/vim-table-mode
  Plug 'dhruvasagar/vim-table-mode'

  " TODO
  " ## `mkdx`
    " A vim plugin that adds some nice extra's to work with markdown documents
    " Source: https://github.com/SidOfc/mkdx/
  Plug 'SidOfc/mkdx'

" # Filetype
  " List of plugins per filetype such as syntax files, editor helper (edit json
  " as yaml), etc.

  " ## Markdown
  " ### `markdown-toc'
    " A vim 7.4+ plugin to generate table of contents for Markdown
    " Source:       https://github.com/mzlogin/vim-markdown-toc
  Plug 'mzlogin/vim-markdown-toc',
    \{
    \ 'for': ['markdown','md']
    \}

  " ## YAML
  " ### `ansible`
    " A vim plugin for syntax highlighting Ansible's common filetypes
    "
    " Source: https://github.com/pearofducks/ansible-vim
  Plug 'pearofducks/ansible-vim',
  \{
    \'do': 'python3 -m pip install --user ansible && ./UltiSnips/generate.sh --style dictionary --user',
    \'for': 'ansible'
  \}

  " ## Jinja2
    " Jinja2 syntax for vim
    " Source: https://github.com/glench/vim-jinja2-syntax
  Plug 'glench/vim-jinja2-syntax'

  " ## Nginx
    " NGINX syntax for vim
    " Source:       https://github.com/chr4/nginx.vim
  Plug 'chr4/nginx.vim'

  " ## Gitignore
    " Gitignore syntax for vim
    " Source: https://github.com/gisphm/vim-gitignore
  Plug 'gisphm/vim-gitignore'

  " ## TOML
    " Vim syntax for TOML
    " Source:       https://github.com/cespare/vim-toml
  Plug 'cespare/vim-toml'

  " ## Python
    "https://github.com/vim-python/python-syntax
  Plug 'vim-python/python-syntax'

  " ## `requirements.txt`
    " The Requirements File Format syntax support for Vim
    " Source: https://github.com/raimon49/requirements.txt.vim
  Plug 'raimon49/requirements.txt.vim'

  " ## Terraform
    " Basic vim/terraform integration
    " Source: https://github.com/hashivim/vim-terraform
  Plug 'hashivim/vim-terraform'

  " ## Helm
    " Basic helm template syntax
    " Source: https://github.com/towolf/vim-helm
  Plug 'towolf/vim-helm'

  " ## `taskwarrior`
    " taskwarrior vim syntax files
    " Source: https://github.com/framallo/taskwarrior.vim
  Plug 'framallo/taskwarrior.vim'

  " ## `ics`
    " Vim plugin for icalendar files. Based on Steven Severinghaus syntax file
    " Source: https://github.com/dannywillems/vim-icalendar
  Plug 'dannywillems/vim-icalendar'

" # Miscellaneous tools
  " ## `wiki.vim`
    "  A wiki plugin for Vim
    " Source: https://github.com/lervag/wiki.vim
  Plug 'lervag/wiki-ft.vim'
  Plug 'lervag/wiki.vim',

  " ## `taskwiki`
    " Proper project management with Taskwarrior in vim.
    " Source:       https://github.com/tools-life/taskwiki
  "Plug 'tools-life/taskwiki',
  "  \{
  " \ 'on': 'VimwikiIndex',
  " \}

  " ## `vim-taskwarrior'
    " Vim interface for taskwarrior
    " Source: https://github.com/linuxcaffe/taskwarrior.vim
  Plug 'linuxcaffe/taskwarrior.vim'

  " ## `calendar`
    " Simple calendar view in vim, usefull when used in combination of journal
    " feature proposed by vimwiki
    " Source: https://github.com/mattn/calendar-vim
  "Plug 'mattn/calendar-vim'

" Finish the call to vim-plug
call plug#end()

" vim: fdm=indent
