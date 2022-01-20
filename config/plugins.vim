" # Description

" File hosting list of plugin to install and when to run theme

" Start vim-plug list of plugin, and tell it where to download plugins.
" Make sure you use single quotes.

call plug#begin(vimrc_basedir . '/.plugins_installed')

" Load every plugin files in $new_rtp/plugins
for f in split(glob(new_rtp . '/plugins/*.vim'), '\n')
  exe 'source ' f
endfor

" Finish the call to vim-plug
call plug#end()

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
