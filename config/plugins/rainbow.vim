" # Description
  " File storing configuration options and method for the plugin `committia`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Load plugin at startup
let g:rainbow_active = 1

" Color configuration
let g:rainbow_conf = {
  \ 'guifgs':
  \[
    \ g:red_A100[0],
    \ g:purple_A100[0],
    \ g:indigo_A100[0],
    \ g:light_blue_A100[0],
    \ g:cyan_A100[0],
    \ g:teal_A100[0],
    \ g:green_A100[0],
    \ g:yellow_A100[0],
    \ g:orange_A100[0],
  \],
  \ 'ctermfgs':
  \[
    \ g:red_A100[1],
    \ g:purple_A100[1],
    \ g:indigo_A100[1],
    \ g:light_blue_A100[1],
    \ g:cyan_A100[1],
    \ g:teal_A100[1],
    \ g:green_A100[1],
    \ g:yellow_A100[1],
    \ g:orange_A100[1],
  \],
\}

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
