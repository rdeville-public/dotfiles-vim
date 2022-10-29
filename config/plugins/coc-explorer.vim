" # Description

nnoremap <leader>e :CocCommand explorer<CR>

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
  \ if winnr('$') == 1 && bufname('%') =~ '.*coc-explorer.*\d\+'
    \ | bdelete
  \ | endif


  " # Highlights

" Coc Explorer custom highlighting
" " # Git
" if g:colors_name == "material-dark"
"   call g:SetHighlight( 'CocExplorerGitDeleted'                , g:red_A200                              , '' )
" else
"   call g:SetHighlight( 'CocExplorerGitDeleted'                , g:red_A700                              , '' )
" endif
"
" call g:LinkHighlight ( 'CocExplorerGitIgnored'                , 'gitcommitComment'                           )
"
" call g:LinkHighlight ( 'CocExplorerGitStaged'                 , 'gitcommitSelectedFile'                      )
" call g:LinkHighlight ( 'CocExplorerFileGitStaged'             , 'CocExplorerGitStaged'                       )
" call g:LinkHighlight ( 'CocExplorerFileGitRootStaged'         , 'CocExplorerGitStaged'                       )
"
" call g:LinkHighlight ( 'CocExplorerGitAdded'                  , 'gitcommitSelectedFile'                      )
" call g:LinkHighlight ( 'CocExplorerFileGitAdded'              , 'CocExplorerGitAdded'                        )
"
" call g:LinkHighlight ( 'CocExplorerGitUnstaged'               , 'gitcommitDiscardedFile'                     )
" call g:LinkHighlight ( 'CocExplorerFileGitUnstaged'           , 'CocExplorerGitUnstaged'                     )
" call g:LinkHighlight ( 'CocExplorerFileGitRootUnstaged'       , 'CocExplorerGitUnstaged'                     )
"
" call g:LinkHighlight ( 'CocExplorerGitPathChange_Internal'    , 'gitcommitDiscardedFile'                     )
" call g:LinkHighlight ( 'CocExplorerGitPathChange'             , 'CocExplorerGitPathChange_Internal'          )
"
" call g:LinkHighlight ( 'CocExplorerGitRenamed'                , 'CocExplorerGitPathChange_Internal'          )
" call g:LinkHighlight ( 'CocExplorerGitCopied'                 , 'CocExplorerGitPathChange_Internal'          )
" "
" call g:LinkHighlight ( 'CocExplorerGitUntracked'              , 'gitcommitUntrackedFile'                     )
" call g:LinkHighlight ( 'CocExplorerGitUnmerged'               , 'CocExplorerGitUntracked'                    )
"
" call g:LinkHighlight ( 'CocExplorerGitContentChange_Internal' , 'gitcommitDiscardedFile'                     )
" call g:LinkHighlight ( 'CocExplorerGitContentChange'          , 'CocExplorerGitContentChange_Internal'       )
" call g:LinkHighlight ( 'CocExplorerGitMixed'                  , 'CocExplorerGitContentChange_Internal'       )
" call g:LinkHighlight ( 'CocExplorerGitModified'               , 'CocExplorerGitContentChange_Internal'       )
