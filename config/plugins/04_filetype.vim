" # Description

" File hosting list of plugins per filetyp such as syntax files, editor helper
" (edit json as yaml), etc.
" This file is source by file ../plugins.vim

" # Filetype

" ## Markdown
  " ### `markdown-toc'
    " A vim 7.4+ plugin to generate table of contents for Markdown
    "
    " Source:       https://github.com/mzlogin/vim-markdown-toc
  Plug 'mzlogin/vim-markdown-toc',
    \{
    \ 'for': ['markdown','md']
    \}

  " ### `markdown-preview'
    " Markdown,RST and Textile preview
    "
    " Source:       https://github.com/iamcco/markdown-preview.nvim
  Plug 'iamcco/markdown-preview.nvim',
  \{
  \ 'do': { -> mkdp#util#install() },
  \ 'for': ['markdown', 'vim-plug']
  \}

" ## YAML
  " ### `ansible`
    " A vim plugin for syntax highlighting Ansible's common filetypes
    "
    " Source: https://github.com/pearofducks/ansible-vim
  Plug 'pearofducks/ansible-vim',
  \{
    \'do': './UltiSnips/generate.sh --style dictionary --user',
    \'for': 'ansible'
  \}

" ## Jinja2
  " ## Jinja2 Syntax
    " Jinja2 syntax for vim
    "
    " Source: https://github.com/glench/vim-jinja2-syntax
    Plug 'glench/vim-jinja2-syntax'

" ## Nginx
  " ### Nginx Syntax
    " NGINX syntax for vim
    "
    " Source:       https://github.com/chr4/nginx.vim
  Plug 'chr4/nginx.vim'

" ## Gitignore
  " ### Gitignore Syntax
    " Gitignore syntax for vim
    "
    " Source: https://github.com/gisphm/vim-gitignore
  Plug 'gisphm/vim-gitignore'

" ## TOML
  " ### TOML Syntax
    " Vim syntax for TOML
    "
    " Source:       https://github.com/cespare/vim-toml
  Plug 'cespare/vim-toml'

" ## Python
  "https://github.com/vim-python/python-syntax
  Plug 'vim-python/python-syntax'

" ## `requirements.txt`
  " The Requirements File Format syntax support for Vim
  "
  " Source: https://github.com/raimon49/requirements.txt.vim
  Plug 'raimon49/requirements.txt.vim'

" ## `taskwarrior`
  " taskwarrior vim syntax files
  "
  " Source: https://github.com/framallo/taskwarrior.vim
  "Plug 'framallo/taskwarrior.vim'
  "Plug 'qbit/taskwarrior-vim'
  "
" ## `ics`
  " Vim plugin for icalendar files. Based on Steven Severinghaus syntax file
  "
  " Source: https://github.com/dannywillems/vim-icalendar
  Plug 'dannywillems/vim-icalendar'


" vim: fdm=indent
