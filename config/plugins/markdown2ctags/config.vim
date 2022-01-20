" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.

  " Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
  \ 'ctagstype': 'markdown',
  \ 'ctagsbin' :  vimrc_basedir . '/.plugins_installed/markdown2ctags/markdown2ctags.py',
  \ 'ctagsargs' : '-f - --sort=yes --sro=»',
  \ 'kinds' : [
    \ 's:sections',
    \ 'i:images'
  \ ],
  \ 'sro' : '»',
  \ 'kind2scope' : {
    \ 's' : 'section',
  \ },
  \ 'sort': 0,
\ }

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
