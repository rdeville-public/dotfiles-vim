" # Description
  " File storing configuration options and method for the plugin `vim-airline`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

" ### Main Configuration
  " There are a couple configuration values available (shown with their default
  " values):

  " The separator used on the left side
  let g:airline_left_sep = ''

  " The separator used on the right side
  let g:airline_right_sep = ''

  " By default, airline will use unicode symbols if your encoding matches
  " utf-8. If you want the powerline symbols set this variable:
  let g:airline_powerline_fonts = 1

    " If you want to use plain ascii symbols, set this variable:
  let g:airline_symbols_ascii = 1

  " Define the set of names to be displayed instead of a specific filetypes
  " (for section a and b), Example:
  " ```vim
  " let g:airline_filetype_overrides = {
  "   \ 'coc-explorer':  [ 'CoC Explorer', '' ],
  "   \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
  "   \ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
  "   \ 'gundo': [ 'Gundo', '' ],
  "   \ 'help':  [ 'Help', '%f' ],
  "   \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
  "   \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
  "   \ 'startify': [ 'startify', '' ],
  "   \ 'vim-plug': [ 'Plugins', '' ],
  "   \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
  "   \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
  "   \ 'vaffle' : [ 'Vaffle', '%{b:vaffle.dir}' ],
  "   \}
  " ```

  " Define the set of text to display for each mode.
  let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }
  " Note: 'multi' is for displaying the multiple cursor mode

  " Defines whether the preview window should be excluded from having its window
  " statusline modified (may help with plugins which use the preview window
  " heavily)
  let g:airline_exclude_preview = 1

  " Caches the changes to the highlighting groups, should therefore be faster.
  " Set this to one, if you experience a sluggish Vim:
  let g:airline_highlighting_cache = 1

" ## Customization
  " The following are some unicode symbols for customizing the left/right
  " separators, as well as the powerline font glyphs.

  " Note: Some additional characters like spaces and colons may be included in
  " the default. Including them within the symbol definitions rather than
  " outside of them allows you to eliminate or otherwise alter them.

  " Note: Be aware that some of these glyphs are defined as ligatures, so they
  " may show up different (usually bigger) if followed by a space. This only
  " happens if both the font and terminal implementation used support
  " ligatures. If you want to follow a glyph with a space _without_ the
  " alternate ligature being rendered, follow it with a non-breaking-space
  " character.

  " Note: You must define the dictionary first before setting values. Also,
  " it's a good idea to check whether it exists as to avoid accidentally
  " overwriting its contents.
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " Powerline Symbols
  let g:airline_left_sep           = ''
  let g:airline_left_alt_sep       = ''
  let g:airline_right_sep          = ''
  let g:airline_right_alt_sep      = ''
  let g:airline_symbols.colnr      = ':'
  let g:airline_symbols.crypt      = ' '
  let g:airline_symbols.linenr     = ''
  let g:airline_symbols.maxlinenr  = ''
  let g:airline_symbols.paste      = ' '
  let g:airline_symbols.spell      = '﬜'
  let g:airline_symbols.notexists  = ' '
  let g:airline_symbols.whitespace = '_'
  let g:airline_symbols.dirty      = ' '
  let g:airline_symbols.branch     = ''

" ## Extensions / Integration
  " Each extension can be configured individually.  Following are
  " the options for each extension (in alphabetical order, after the default
  " extension)

" ### `airline-branch`
  " vim-airline will display the branch-indicator together with the branch name
  " in the statusline, if one of the following plugins is installed:
  "
  " * [fugitive.vim](https://github.com/tpope/vim-fugitive)
  " * [gina.vim](https://github.com/lambdalisue/gina.vim)
  " * [lawrencium](https://bitbucket.org/ludovicchabant/vim-lawrencium)
  " * [vcscommand](http://www.vim.org/scripts/script.php?script_id=90)

  " Customize formatting of branch name
  " Truncate all path sections but the last one, e.g. a branch
  " 'foo/bar/baz' becomes 'f/b/baz', use
  let g:airline#extensions#branch#format = 2

  " Truncate sha1 commits at this number of characters
  let g:airline#extensions#branch#sha1_len = 8

" ### `airline-fugitiveline`
  " This extension hides the fugitive://**// part of the buffer names, to only
  " show the file name as if it were in the current working tree.
  " It is deactivated by default if `airline-bufferline` is activated.

  " If enabled, the buffer that comes from fugitive, will have added a trailing
  " "[git]" to be able do distinguish between fugitive and non-fugitive buffers.

  " Enable/disable bufferline integration
  let g:airline#extensions#fugitiveline#enabled = 1

" ### `airline-hunks`
  " For following plugins:
  "
  " * vim-gitgutter : https://github.com/airblade/vim-gitgutter
  " * vim-signify   : https://github.com/mhinz/vim-signify
  " * changesPlugin : https://github.com/chrisbra/changesPlugin
  " * quickfixsigns : https://github.com/tomtom/quickfixsigns_vim
  " * coc-git       : https://github.com/neoclide/coc-git

  " You can use `airline#extensions#hunks#get_raw_hunks()` to get the full
  " hunks, without shortening. This allows for advanced customization, or a
  " quick way of querying how many changes you got. It will return something
  " like '+4 ~2 -1'.

  " Enable/disable showing a summary of changed hunks under source control.
  let g:airline#extensions#hunks#enabled = 1

  " Set hunk count symbols.
  let g:airline#extensions#hunks#hunk_symbols = ['+', '~', 'x']

  " Enable coc-git extension.
  " If not set to 1, vim-airline will not consider to use coc-git for the hunks
  " extension. Make sure to have the coc-git extension enabled.
  let g:airline#extensions#hunks#coc_git = 1

" ### `airline-tabline`·
  " Note: If you're using the ctrlspace tabline only the option marked with (c)
  " are supported!

  " Enable/disable enhanced tabline. (c)
  let g:airline#extensions#tabline#enabled = 1

  " Enable/disable displaying open splits per tab (only when tabs are opened)
  let g:airline#extensions#tabline#show_splits = 1

  " Enable/disable displaying buffers with a single tab. (c)
  let g:airline#extensions#tabline#show_buffers = 1

  " Enable/disable displaying number of tabs in the right side:
  "
  " * 0 : Disable
  " * 1 : Not displayed if the number of tabs is less than 1
  " * 2 : Always displaying number of tabs in the right side
  let g:airline#extensions#tabline#show_tab_count = 1

  " Enable/disable display preview window buffer in the tabline.
  let g:airline#extensions#tabline#exclude_preview = 0

  " configure how numbers are displayed in tab mode.
  " ```vim
  " let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
  " let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
  " let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#tabline#tab_nr_type = 2

  " enable/disable displaying tab number in tabs mode.
  let g:airline#extensions#tabline#show_tab_nr = 1

  " Enable/disable displaying tab type (e.g. [buffers]/[tabs])
  let g:airline#extensions#tabline#show_tab_type = 1

  " Show buffer label at first position:
  let g:airline#extensions#tabline#buf_label_first = 1

  " Rename label for buffers (default: 'buffers') (c)
  let g:airline#extensions#tabline#buffers_label = ''

  " Rename label for tabs (default: 'tabs') (c)
  let g:airline#extensions#tabline#tabs_label = ''

  " Change the symbol for skipped tabs/buffers (default '...')
  let g:airline#extensions#tabline#overflow_marker = '…'

  " Configure whether close button should be shown:
  let g:airline#extensions#tabline#show_close_button = 0

  " Enable/disable displaying index of the buffer.
  let g:airline#extensions#tabline#buffer_idx_mode = 0

" ### `airline-vista`
  " enable/disable vista integration >
  let g:airline#extensions#vista#enabled = 1

" ### `airline-wordcount`
  " Enable/disable word counting of the document/visual selection
  let g:airline#extensions#wordcount#enabled = 1

  " Set list of filetypes for which word counting is enabled:
  " Use ['all'] to enable for all filetypes.
  let g:airline#extensions#wordcount#filetypes = ['all']

  " Defines how to display the wordcount statistics for the default formatter
  let g:airline#extensions#wordcount#formatter#default#fmt = '%s W'
  let g:airline#extensions#wordcount#formatter#default#fmt_short = '%s W'

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
