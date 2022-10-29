" # Description
  " File storing configuration options and method for the plugin `vim-workspace`.

function SessionDir(vimrc_basedir)
  let l:git_dir = finddir('.git/..', expand('%:p:h').';')
  if l:git_dir != ""
    let l:git_dir = substitute(l:git_dir, expand($HOME) . "/", "", "")
    let l:path = a:vimrc_basedir . '/.sessions/' . l:git_dir
  else
    let l:path = a:vimrc_basedir . '/.sessions/' . expand('%:p:h').';'
  endif

  if ! isdirectory(l:path)
    call mkdir(l:path, "p", 0755)
  endif

  return l:path
endfunction

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " If you would prefer that a session is automatically created if it doesn't
  " exist, you can add the following line to enable the behaviour:
let g:workspace_autocreate = 1

  " The Vim session will be stored in your directory. The filename is set to the
  " default session name set by Vim, but can be changed with this configuration:
let g:workspace_session_name = SessionDir(vimrc_basedir) . '/session.vim'

  " If you'd like sessions to not load if you're explicitly loading a file
  " in a workspace directory (as opposed to an argument-less `vim`), the following
  " in your vimrc will provide that behaviour:
let g:workspace_session_disable_on_args = 1

" Undo history will be stored in the local directory as a hidden folder. The
" default can be explicitly configured, and is set to the following:
let g:workspace_undodir= SessionDir(vimrc_basedir) . "/undodir"

  " Git commit filetypes won't autosave (or trim trailing spaces) by default. You
  " can customize the ignore list with this line:
let g:workspace_autosave_ignore = [
\ 'gitcommit',
\ 'Coc Explorer',
\ '*coc-explorer*',
\ '*Vista*'
\]
