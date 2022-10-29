" # Description
  " File storing configuration options and method for the plugin `vim-indent-guides`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Use this option to control whether or not the plugin automatically
  " calculates the highlight colors. Will use the current colorscheme's
  " background color as a base color.
  "
  " You can add the following lines to your colorscheme file.
  " hi IndentGuidesOdd  guibg=red   ctermbg=3
  " hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_auto_colors = 0

  " Use this option to control whether the plugin is enabled on Vim startup.
let g:indent_guides_enable_on_vim_startup = 1

  " Use this option to specify a list of filetypes to disable the plugin for.
let g:indent_guides_exclude_filetypes = [
  \ 'help',
  \ 'nerdtree',
  \ 'tagbar',
  \ 'taskreport'
\ ]

  " Use this option to control whether the default mapping (<Leader>ig) gets set.
let g:indent_guides_default_mapping = 0

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
