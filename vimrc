"#!/usr/bin/env vim
"
" Set base directory where there is file to be loaded
" See https://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed
" If you're using a symlink to your script, but your resources are in
" the same directory as the actual script, you'll need to do this:
"
" 1. Get the absolute path of the script
" 2. Resolve all symbolic links
" 3. Get the folder of the resolved absolute file

let vimrc_basedir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Generate path to custom runtime
let g:new_rtp = vimrc_basedir . '/config'

" Update runtime path by adding vim configuration folder
exe 'set rtp+=' . expand(g:new_rtp)

set wildignore=**autocmd.vim,**Session.vim
for f in split(glob(g:new_rtp . '/*.vim'), '\n')
  exe 'source ' f
endfor
set wildignore=

" Load configuration for each plugins except hightlight if present as plugin
" highlight are loaded from colorscheme file
for f in split(glob(g:new_rtp . '/plugins/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob(g:new_rtp . '/plugins/*/*.vim'), '\n')
  exe 'source' f
endfor

exe 'source ' . g:new_rtp . '/autocmd.vim'

autocmd filetype crontab setlocal nobackup nowritebackup

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
