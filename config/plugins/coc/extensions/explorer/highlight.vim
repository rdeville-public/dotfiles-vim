" Coc Explorer custom highlighting
" # Git
if g:colors_name == "material-dark"
  call g:SetHighlight( 'CocExplorerGitDeleted'                , g:red_A200                              , '' )
else
  call g:SetHighlight( 'CocExplorerGitDeleted'                , g:red_A700                              , '' )
endif

call g:LinkHighlight ( 'CocExplorerGitIgnored'                , 'gitcommitComment'                           )

call g:LinkHighlight ( 'CocExplorerGitStaged'                 , 'gitcommitSelectedFile'                      )
call g:LinkHighlight ( 'CocExplorerFileGitStaged'             , 'CocExplorerGitStaged'                       )
call g:LinkHighlight ( 'CocExplorerFileGitRootStaged'         , 'CocExplorerGitStaged'                       )

call g:LinkHighlight ( 'CocExplorerGitAdded'                  , 'gitcommitSelectedFile'                      )
call g:LinkHighlight ( 'CocExplorerFileGitAdded'              , 'CocExplorerGitAdded'                        )

call g:LinkHighlight ( 'CocExplorerGitUnstaged'               , 'gitcommitDiscardedFile'                     )
call g:LinkHighlight ( 'CocExplorerFileGitUnstaged'           , 'CocExplorerGitUnstaged'                     )
call g:LinkHighlight ( 'CocExplorerFileGitRootUnstaged'       , 'CocExplorerGitUnstaged'                     )

call g:LinkHighlight ( 'CocExplorerGitPathChange_Internal'    , 'gitcommitDiscardedFile'                     )
call g:LinkHighlight ( 'CocExplorerGitPathChange'             , 'CocExplorerGitPathChange_Internal'          )

call g:LinkHighlight ( 'CocExplorerGitRenamed'                , 'CocExplorerGitPathChange_Internal'          )
call g:LinkHighlight ( 'CocExplorerGitCopied'                 , 'CocExplorerGitPathChange_Internal'          )
"
call g:LinkHighlight ( 'CocExplorerGitUntracked'              , 'gitcommitUntrackedFile'                     )
call g:LinkHighlight ( 'CocExplorerGitUnmerged'               , 'CocExplorerGitUntracked'                    )

call g:LinkHighlight ( 'CocExplorerGitContentChange_Internal' , 'gitcommitDiscardedFile'                     )
call g:LinkHighlight ( 'CocExplorerGitContentChange'          , 'CocExplorerGitContentChange_Internal'       )
call g:LinkHighlight ( 'CocExplorerGitMixed'                  , 'CocExplorerGitContentChange_Internal'       )
call g:LinkHighlight ( 'CocExplorerGitModified'               , 'CocExplorerGitContentChange_Internal'       )
