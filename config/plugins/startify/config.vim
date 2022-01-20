" # Description

" File storing configuration options and method for the plugin `vim-startify`.

" # Methods

" Small method usefull to add information to startify page

  " Returns all modified files of the current git repo `2>/dev/null` makes the
  " command fail quietly, so that when we are not in a git repo, the list will be
  " empty
function! s:gitModified()
  let files = systemlist('git ls-files -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

  " Returns all untracked files honoroung the .gitignore of the current git repo
  " `2>/dev/null` makes the command fail quietly, so that when we are not in a
  " git repo, the list will be empty
function! s:gitUntracked()
  let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction


  " You can create a function `StartifyEntryFormat()` which returns a string that
  " gets evaluated in Startify. In that string, `entry_path` and `absolute_path`
  " will be replaced by their respective values.
  "
  " `absolute_path` is self-explaining and `entry_path` is the same path but
  " potentially shortened, depending on options like `g:startify_relative_path`.
  "
  " Let us assume you have vim-devicons installed. That plugin has a function
  " `WebDevIconsGetFileTypeSymbol()` which returns an icon depending on the given
  " file. Prepend the logo to each Startify entry by putting this in your vimrc:

function! StartifyEntryFormat()
  if has('devicons')
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
  else
    return 'entry_path'
  endif
endfunction

" # Configuration

" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed (like `startify_custom_footer`)

  " ## Most used options
  "
  " List of most commonly used options

  " A list of files or directories to bookmark. The list can contain two
  " kinds of types. Either a path or a dictionary whereas the key is the
  " custom index and the value the path.
let g:startify_bookmarks = []

  " When opening a file or bookmark, change to its directory.
let g:startify_change_to_dir = 1

  " When opening a file or bookmark, seek and change to the root directory of
  " the VCS (if there is one).
  " At the moment only git, hg, bzr and svn are supported.
let g:startify_change_to_vcs_root = 1

  " The default command for switching directories. Valid values:
  "
  " * `cd`  (`:cd`)
  " * `lcd` (`:lcd`)
  " * `tcd` (`:tcd`)
  "
  " Affects `g:startify_change_to_dir` and `g:startify_change_to_vcs_root`.
let g:startify_change_cmd = 'lcd'

  " Define your own header.
  "
  " This option takes a `list of strings`, whereas each string will be put on its
  " own line. If it is a simple `string`, it should evaluate to a list of strings.
  "
  " Helper functions:~
  "
  "     startify#fortune#quote()       random quote
  "     startify#fortune#boxed(...)    random quote in a box
  "     startify#fortune#cowsay(...)   random quote in a box + cow
  "
  " The last two functions optionally take a quote in the list of strings format.
  " They also return a list of strings, suitable for this option.
  "
  "     startify#pad([strings])        pad strings in list according to
  "                                    `g:startify_padding_left` or the default of 3
  "     startify#center([strings])     center list of strings without removing
  "                                    its strings indentations
let g:startify_custom_header = 'startify#pad(startify#fortune#cowsay())'

  " Show <empty buffer> and <quit>.
let g:startify_enable_special = 1

  " Startify displays lists. Each list consists of a `type` and optionally a `header`
  " and custom `indices`.
let g:startify_lists = [
  \ { 'type' : 'dir'                      , 'header' : ['  Folders '. getcwd()] },
  \ { 'type' : 'files'                    , 'header' : ['  Files']              },
  \ { 'type' : function('s:gitModified')  , 'header' : [' ✗ Modified']           },
  \ { 'type' : function('s:gitUntracked') , 'header' : ['  Untracked']          },
  \ { 'type' : 'bookmarks'                , 'header' : [' 🔖Bookmarks']          },
\]

  " A list of Vim regular expressions that is used to filter recently used
  " files. See `pattern.txt` for what patterns can be used.
  "
  " The following patterns are filtered by default:
  "
  " * `runtime/doc/.*\.txt$`
  " * `bundle/.*/doc/.*\.txt$`
  " * `plugged/.*/doc/.*\.txt$`
  " * `/.git/`
  " * `fugitiveblame$`
  " * `escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc/.*\.txt$'`
  "
  " NOTE: Due to the nature of patterns, you can't just use `~/mysecret` but have
  " to use `$HOME .'/mysecret.txt'`. The former would do something entirely
  " different: |/\~|.
  "
  " NOTE: When using backslashes as path separators, escape them. Otherwise using
  " `C:\this\vim\path\is\problematic` would not match what you would expect, since
  " |/\v| is a pattern, too.
let g:startify_skiplist = [
  \ 'COMMIT_EDITMSG',
  \ 'runtime/doc/.*\.txt$',
  \ 'bundle/.*/doc/.*\.txt$',
  \ 'plugged/.*/doc/.*\.txt$',
  \ '/.git/',
  \ 'fugitiveblame$',
  \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc/.*\.txt$',
\]

  " Usually `v:oldfiles` only gets updated when Vim exits. Using this option
  " updates it on-the-fly, so that `:Startify` is always up-to-date.
let g:startify_update_oldfiles = 1

  " ## Misc Options

  " Miscellanous options

  " A list of commands to execute on selection. Leading colons are optional. It
  " supports optional custom indices and/or command descriptions.
let g:startify_commands = []

  " Enable the option only in case you think Vim starts too slowly (because of
  " :Startify) or if you often edit files on remote filesystems.
  " It's called unsafe because it improves the time :Startify needs to execute by
  " reducing the amount of syscalls to the underlying operating system, but
  " sacrifices the precision of shown entries.
  " This could lead to inconsistences in the shown :Startify entries (e.g. the
  " same file could be shown twice, because one time file was opened via absolute
  " path and another time via symlink).
  " Currently this option does this:
  "     - don't resolves symlinks (readlink(2))
  "     - don't check every file if it's readable (stat(2))
  "     - don't filter through the bookmark list
let g:startify_enable_unsafe = 0

  " The number of files to list.
let g:startify_files_number = 10

  " By default, the fortune header uses ASCII characters, because they work for
  " everyone. If you set this option to 1 and your 'encoding' is "utf-8", Unicode
  " box-drawing characters will be used instead.
  " This is not the default, because users of East Asian languages often set
  " 'ambiwidth' to "double" or make their terminal emulator treat characters of
  " ambiguous width as double width. Both would make the drawed box look funny.
  "  For more information: http://unicode.org/reports/tr11
let g:startify_fortune_use_unicode = 1

  " The number of spaces used for left padding.
let g:startify_padding_left = 3

  " If the file is in or below the current working directory, use a relative path.
  " Otherwise an absolute path is used. The latter prevents hard to grasp entries
  " like `../../../../../foo`.
  "
  " NOTE: This only applies to the `files` list, since the `dir` list is
  " relative by nature.
let g:startify_relative_path = 0

  " Do not create the startify buffer, if this is a Vim server instance with a
  " name contained in this list.
let g:startify_skiplist_server = []

  " Show environment variables in path, if their name is shorter than their value.
  " See |startify-colors| for highlighting them.
  " $PWD and $OLDPWD are ignored.
let g:startify_use_env = 0

  " ## Sessions

  " Set of variable relative to vim session management

  " If this option is enabled and you start Vim in a directory that contains a
  " `Session.vim`, that session will be loaded automatically. Otherwise it will be
  " shown as the top entry in the Startify buffer.
  " The same happens when you |:cd| to a directory that contains a `Session.vim`
  " and execute |:Startify|.
  " It also works if you open a bookmarked directory. See |g:startify_bookmarks|.
  " This is great way to create a portable project folder!
  " NOTE: This option is affected by |g:startify_session_delete_buffers|.
let g:startify_session_autoload = 1

  " This is a list of commands to be executed before saving a session.
let g:startify_session_before_save = []

  " Delete all buffers when loading or closing a session:
  "    - When using `startify-:SLoad`.
  "    - When using `startify-:SClose`.
  "    - When using `g:startify_session_autoload`.
  "    - When choosing a session from the Startify buffer.
  " NOTE: Buffers with unsaved changes are silently ignored.
let g:startify_session_delete_buffers = 1

  " The maximum number of sessions to display. Makes the most sense together with
  " `g:startify_session_sort`.
let g:startify_session_number = 50

  " Automatically update sessions in two cases:
  "    - Before leaving Vim
  "    - Before loading a new session via :SLoad
  " This also works for sessions started with:
  "    vim -S mysession.vim
let g:startify_session_persistence = 1

  " Lines matching any of the patterns in this list, will be removed from the
  " session file.
  " Internally this simply does:
  "     :global/setlocal/delete
  "     :global/winheight/delete
  " So you can use any |pattern|.
  " NOTE: Take care not to mess up any expressions within the session file,
  " otherwise you'll probably get problems when trying to load it.
let g:startify_session_remove_lines = ['setlocal']

  " Include a list of variables in here which you would like Startify to save into
  " the session file in addition to what Vim normally saves into the session file.
  " For example, Vim will not normally save all-lowercase global variables, which
  " are common for plugin settings.  It may be advisable to include
  " `g:startify_session_savevars` and `g:startify_session_savecmds` into this list
  " so they are saved every time the session saves.
  " Example:
  " ```vim
  "   let g:startify_session_savevars = [
  "   \ 'g:startify_session_savevars',
  "   \ 'g:startify_session_savecmds',
  "   \ 'g:random_plugin_use_feature'
  "   \ ]
  " ```
let g:startify_session_savevars = []

  " Sort sessions by modification time (when the session files were written)
  " rather than alphabetically.
let g:startify_session_sort = 1

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
