" If you would prefer that a session is automatically created if it doesn't
" exist, you can add the following line to enable the behaviour:
let g:workspace_autocreate =1

" The Vim session will be stored in your directory. The filename is set to the
" default session name set by Vim, but can be changed with this configuration:
"let g:workspace_session_name = 'Session.vim'
let g:workspace_session_directory = vimrc_basedir . '/.sessions/'

" If you'd like sessions to not load if you're explicitly loading a file
" in a workspace directory (as opposed to an argument-less `vim`), the following
" in your vimrc will provide that behaviour:
let g:workspace_session_disable_on_args = 1

" When in a workspace, file undo history is persisted between sessions, without
" needing to keep Vim on.

" This feature can also be explicitly enabled or disabled, such as the
" following:
let g:workspace_persist_undo_history = 1

" Undo history will be stored in the local directory as a hidden folder. The
" default can be explicitly configured, and is set to the following:
let g:workspace_undodir='.undodir'

" You can explicitly control this feature by setting the configuration to either
" 1 (enabled) or 0 (disabled), with the following setting:
let g:workspace_autosave = 1

" Do not allow workspace to open session in new tab
let g:workspace_create_new_tabs = 0

let g:workspace_autosave_ignore = ['gitcommit', 'Coc Explorer', '*coc-explorer*']
