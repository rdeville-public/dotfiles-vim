" # Description

" Autozoom and unzoom when entering or leaving tagbar
autocmd BufEnter *coc-explorer* :vertical resize 80
autocmd BufLeave *coc-explorer* :vertical resize 15

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter *
  \ if tabpagenr('$') == 1
    \ && winnr('$') == 1
    \ && bufname('%') =~ '.*coc-explorer.*\d\+'
    \ | quit
  \ | endif

" Close the tab if NERDTree and Tagbar are the only window remaining in it.
autocmd BufEnter *
  \ if winnr('$') == 1
    \ && bufname('%') =~ '.*coc-explorer.*\d\+'
    \ | :tabclose
  \ | endif

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
autocmd BufEnter *
  \ if bufname('#') =~ '.*coc-explorer.*\d\+'
    \ && bufname('%') !~ '.*coc-explorer.*\d\+'
    \ && winnr('$') > 1
      \ | let buf=bufnr()
      \ | buffer#
      \ | execute "normal! \<C-W>w"
      \ | execute 'buffer'.buf
  \ | endif


autocmd VimLeavePre *
  \ if winnr('$') == 1
    \ && bufname('%') =~ '.*coc-explorer.*\d\+'
    \ | :Bclose
  \ | endif

