" # Description

" File storing configuration options and method for the plugin `vim-devicons`.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed (like `startify_custom_footer`)

" ## Main Configuration
  "
  " There are a couple configuration values available (shown with their default
  " values):

  " Enable experimental features
  " Example:
  " ```vim
  " let g:airline_experimental = 1
  " ```

  " The separator used on the left side
let g:airline_left_sep = ''

  " The separator used on the right side
let g:airline_right_sep = ''

  " Enable modified detection
let g:airline_detect_modified = 1

  " Enable paste detection
let g:airline_detect_paste = 1

  " Enable crypt detection
let g:airline_detect_crypt = 1
"
  " Enable spell detection
let g:airline_detect_spell = 1

  " Display spelling language when spell detection is enabled
  " (if enough space is available)
let g:airline_detect_spelllang = 1

  " Enable iminsert detection
let g:airline_detect_iminsert = 0

  " Determine whether inactive windows should have the left section collapsed
  " to only the filename of that buffer.
let g:airline_inactive_collapse = 1

  " Use alternative seperators for the statusline of inactive windows
let g:airline_inactive_alt_sep = 1

  " Themes are automatically selected based on the matching colorscheme. this
  " can be overridden by defining a value.
  "
  " Note: Only the dark theme is distributed with vim-airline. For more themes,
  " checkout the vim-airline-themes repository
  " (github.com/vim-airline/vim-airline-themes)
  "
  " Example:
  " ```vim
  " let g:airline_theme='dark'
  " ```

  " By default, airline will use unicode symbols if your encoding matches
    " utf-8. If you want the powerline symbols set this variable:
let g:airline_powerline_fonts = 1

    " If you want to use plain ascii symbols, set this variable:
let g:airline_symbols_ascii = 1

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
  \}

  " Define the set of filename match queries which excludes a window from
  " having its statusline modified.
  " Example:
  " ```vim
  " let g:airline_exclude_filenames = [] " see source for current list
  " ```

  " Define the set of filetypes which are excluded from having its window
  " statusline modified
  " Example:
  " ```vim
  " let g:airline_exclude_filetypes = [] " see source for current list
  " ```

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

  " Defines whether the preview window should be excluded from having its window
  " statusline modified (may help with plugins which use the preview window
  " heavily)
  " ```vim
let g:airline_exclude_preview = 1

  " Caches the changes to the highlighting groups, should therefore be faster.
  " Set this to one, if you experience a sluggish Vim:
  " ```vim
let g:airline_highlighting_cache = 1

  " Disable airline on FocusLost autocommand (e.g. when Vim loses focus),
  " example:
  " ```vim
  " let g:airline_focuslost_inactive = 0
  " ```

  " Configure the fileformat output
  " By default, it will display something like 'utf-8[unix]', however, you can
  " skip displaying it, if the output matches a configured string. To do so,
  " set:
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

  " Display a short path in statusline:
  " Example:
  " ```vim
  " let g:airline_stl_path_style = 'short'
  " ```

  " Display a only file name in statusline:
  " Example:
  " ```vim
  " let g:airline_section_c_only_filename = 1
  " ```

" ## Customization
  "
  " The following are some unicode symbols for customizing the left/right
  " separators, as well as the powerline font glyphs.
  "
  " Note: Some additional characters like spaces and colons may be included in the
  " default. Including them within the symbol definitions rather than outside of
  " them allows you to eliminate or otherwise alter them.
  "
  " Note: Be aware that some of these glyphs are defined as ligatures, so they may
  " show up different (usually bigger) if followed by a space. This only happens
  " if both the font and terminal implementation used support ligatures. If you
  " want to follow a glyph with a space _without_ the alternate ligature being
  " rendered, follow it with a non-breaking-space character.
  "
  " Note: You must define the dictionary first before setting values. Also, it's
  " a good idea to check whether it exists as to avoid accidentally overwriting
  " its contents.
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Powerline Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.colnr = '  '
let g:airline_symbols.crypt = ' '
let g:airline_symbols.linenr = '㏑'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = ' '
let g:airline_symbols.spell = '﬜'
let g:airline_symbols.notexists = ' ?'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.dirty=' '
let g:airline_symbols.branch = ''

" ## Extensions
  " Most extensions are enabled by default and lazily loaded when the
  " corresponding plugin (if any) is detected.
  "
  " By default, airline will attempt to load any extension it can find in the
  " `runtimepath`.  On some systems this can result in an undesirable startup
  " cost.  You can disable the check with the following flag.
  " ```vim
  " let g:airline#extensions#disable_rtp_load = 1
  " ```
  "
  " Note: Third party plugins that rely on this behavior will be affected. You
  " will need to manually load them.
  "
  " Alternatively, if you want a minimalistic setup and would rather opt-in which
  " extensions get loaded instead of disabling each individually, you can declare
  " the following list variable:
  " ```vim
  " " An empty list disables all extensions
  " let g:airline_extensions = []
  "
  " " Or only load what you want
  " let g:airline_extensions = ['branch', 'tabline']
  " ```
  "
  " In addition, each extension can be configured individually.  Following are
  " the options for each extension (in alphabetical order, after the default
  " extension)
  "
  " Usually, each extension will only be loaded if the required Vim plugin is
  " installed as well, otherwise it will remain disabled. See the output of the
  " `:AirlineExtensions` command.

" ### `airline-branch`
  " vim-airline will display the branch-indicator together with the branch name
  " in the statusline, if one of the following plugins is installed:
  "
  " * [fugitive.vim](https://github.com/tpope/vim-fugitive)
  " * [gina.vim](https://github.com/lambdalisue/gina.vim)
  " * [lawrencium](https://bitbucket.org/ludovicchabant/vim-lawrencium)
  " * [vcscommand](http://www.vim.org/scripts/script.php?script_id=90)
  "
  " If a file is edited, that is not yet in the repository, the
  " notexists symbol will be displayed after the branch name. If the repository
  " is not clean, the dirty symbol will be displayed after the branch name.
  "
  " Notexists symbol means you are editing a file, that has not been
  " committed yet, default: '?'
  "
  " The dirty symbol basically means your working directory is dirty,
  " default: '!'
  "
  " Note: the branch extension will be disabled for windows smaller than 80
  " characters.
  "
  " Enable/disable fugitive/lawrencium integration
  " ```vim
  " let g:airline#extensions#branch#enabled = 1
  " ```

  " Change the text for when no branch is detected
  " ```vim
  " let g:airline#extensions#branch#empty_message = ''
  " ```
  "
  " Define the order in which the branches of different vcs systems will be
  " displayed on the statusline (currently only for fugitive and lawrencium)
  " ```vim
  " let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
  " ```

  " Use vcscommand.vim if available
  " ```vim
  " let g:airline#extensions#branch#use_vcscommand = 0
  " ```

  " Truncate long branch names to a fixed length
  " ```vim
  " let g:airline#extensions#branch#displayed_head_limit = 10
  " ```

  " Customize formatting of branch name
  " ```vim
  " " Default value leaves the name unmodifed
  " let g:airline#extensions#branch#format = 0
  "
  " " To only show the tail, e.g. a branch 'feature/foo' becomes 'foo', use
  " let g:airline#extensions#branch#format = 1
  "
  " " To truncate all path sections but the last one, e.g. a branch
  " " 'foo/bar/baz' becomes 'f/b/baz', use
  " let g:airline#extensions#branch#format = 2
  "
  " " If a string is provided, it should be the name of a function that
  " " takes a string and returns the desired value
  " let g:airline#extensions#branch#format = 'CustomBranchName'
  " function! CustomBranchName(name)
  "   return '[' . a:name . ']'
  " endfunction
  " ```
let g:airline#extensions#branch#format = 2

  " Truncate sha1 commits at this number of characters
let g:airline#extensions#branch#sha1_len = 10

  " Customize branch name retrieval for any version control system
  " ```vim
  " let g:airline#extensions#branch#custom_head = 'GetScmBranch'
  " function! GetScmBranch()
  "   if !exists('b:perforce_client')
  "     let b:perforce_client = system('p4 client -o | grep Client')
  "     " Invalidate cache to prevent stale data when switching clients. Use a
  "     " buffer-unique group name to prevent clearing autocmds for other
  "     " buffers.
  "     exec 'augroup perforce_client-'. bufnr("%")
  "         au!
  "         autocmd BufWinLeave <buffer> silent! unlet! b:perforce_client
  "     augroup END
  "   endif
  "   return b:perforce_client
  " endfunction
  " ```

  " Configure additional vcs checks to run
  " By default, vim-airline will check if the current edited file is untracked
  " in the repository. If so, it will append the `g:airline_symbols.notexists`
  " symbol to the branch name.
  " In addition, it will check if the repository is clean, else it will append
  " the `g:airline_symbols.dirty` symbol to the branch name (if the current
  " file is not untracked). Configure, by setting the following variable:
  " ```vim
  " let g:airline#extensions#branch#vcs_checks = ['untracked', 'dirty']
  " ```

" ### `airline-coc`
  " Enable/disable coc integration
  " ```vim
  " let g:airline#extensions#coc#enabled = 1
  " ```

  " Change error symbol:
  " ```vim
  " let airline#extensions#coc#error_symbol = 'E:'
  " ```

  " Change warning symbol:
  " ```vim
  " let airline#extensions#coc#warning_symbol = 'W:'
  " ```

  " Change error format:
  " ```vim
  " let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
  " ```

  " change warning format:
  " ```vim
  " let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
  " ```

" ### `airline-csv`
  " Enable/disable csv integration for displaying the current column.
  " ```vim
  " let g:airline#extensions#csv#enabled = 1
  " ```

  " Change how columns are displayed.
  " ```vim
  " let g:airline#extensions#csv#column_display = 'Number' (default)
  " let g:airline#extensions#csv#column_display = 'Name'
  " ```
let g:airline#extensions#csv#column_display = 'Name'

" ### `airline-fugitiveline`
  " This extension hides the fugitive://**// part of the buffer names, to only
  " show the file name as if it were in the current working tree.
  " It is deactivated by default if `airline-bufferline` is activated.
  "
  " If enabled, the buffer that comes from fugitive, will have added a trailing
  " "[git]" to be able do distinguish between fugitive and non-fugitive buffers.

  " Enable/disable bufferline integration
  " ```vim
  " let g:airline#extensions#fugitiveline#enabled = 1
  " ```

" ### `airline-hunks`
  " For following plugins:
  "
  " * vim-gitgutter : https://github.com/airblade/vim-gitgutter
  " * vim-signify   : https://github.com/mhinz/vim-signify
  " * changesPlugin : https://github.com/chrisbra/changesPlugin
  " * quickfixsigns : https://github.com/tomtom/quickfixsigns_vim
  " * coc-git       : https://github.com/neoclide/coc-git
  "
  " You can use `airline#extensions#hunks#get_raw_hunks()` to get the full
  " hunks, without shortening. This allows for advanced customization, or a
  " quick way of querying how many changes you got. It will return something
  " like '+4 ~2 -1'.

  " Enable/disable showing a summary of changed hunks under source control.
  " ```vim
  " let g:airline#extensions#hunks#enabled = 1
  " ```

  " Enable/disable showing only non-zero hunks.
  " ```vim
  " let g:airline#extensions#hunks#non_zero_only = 0
  " ```

  " Set hunk count symbols.
  " ```vim
let g:airline#extensions#hunks#hunk_symbols = [' ', '✹ ', '✖ ']
  " ```

  " Enable coc-git extension.
  " If not set to 1, vim-airline will not consider to use coc-git for the hunks
  " extension. Make sure to have the coc-git extension enabled.
  " ```vim
let g:airline#extensions#hunks#coc_git = 1
  " ```

" ### `airline-languageclient`
  " LanguageClient: https://github.com/autozimu/LanguageClient-neovim
  " (despite its name, it can be used for Vim and Neovim).

  " Enable/disable LanguageClient integration
  " ```vim
  " let g:airline#extensions#languageclient#enabled = 1
  " ```

  " Languageclient error_symbol
  " ```vim
  " let airline#extensions#languageclient#error_symbol = 'E:'
  " ```

  " Languageclient warning_symbol
  " ```vim
  " let airline#extensions#languageclient#warning_symbol = 'W:'

  " Languageclient show_line_numbers
  " ```vim
  " let airline#extensions#languageclient#show_line_numbers = 1
  " ```

  " Languageclient open_lnum_symbol
  " ```vim
  " let airline#extensions#languageclient#open_lnum_symbol = '(L'
  " ```

  " Languageclient close_lnum_symbol
  " ```vim
  " let airline#extensions#languageclient#close_lnum_symbol = ')'
  "

" ### `airline-lsp`
  " lsp: https://github.com/prabirshrestha/vim-lsp

  " Enable/disable lsp integration
  " ```vim
  " let g:airline#extensions#lsp#enabled = 1

  " lsp error_symbol
  " ```vim
  " let airline#extensions#lsp#error_symbol = 'E:'
  " ```

  " lsp warning
  " ```vim
  " let airline#extensions#lsp#warning_symbol = 'W:'

  " lsp show_line_numbers
  " ```vim
  " let airline#extensions#lsp#show_line_numbers = 1
  " ```

  " lsp open_lnum_symbol
  " ```vim
  " let airline#extensions#lsp#open_lnum_symbol = '(L'
  " ```

  " lsp close_lnum_symbol
  " ```vim
  " let airline#extensions#lsp#close_lnum_symbol = ')'
  " ```

  " lsp progress skip time
  " Suppresses the frequency of status line updates.
  " Prevents heavy operation when using a language server that sends frequent
  " progress notifications.
  " Set 0 to disable.
  " ```vim
  " g:airline#extensions#lsp#progress_skip_time = 0.3 (default)
  " ```

" ### `airline-neomake`
  " neomake: https://github.com/neomake/neomake

  " Enable/disable neomake integration
  " ```vim
  " let g:airline#extensions#neomake#enabled = 1
  " ```

  " neomake error_symbol
  " ```vim
  " let airline#extensions#neomake#error_symbol = 'E:'
  " ```

  " neomake warning
  " ```vim
  " let airline#extensions#neomake#warning_symbol = 'W:'
  " ```
  "
" ### `airline-nerdtree`
  " NerdTree: https://github.com/preservim/nerdtree.git

  " Airline displays the Nerdtree specific statusline (which can be configured
  " using the `'NerdTreeStatusline'| `ariable (for details, see the help of
  " NerdTree)

  " Enable/disable nerdtree's statusline integration
  " ```vim
  " let g:airline#extensions#nerdtree_statusline = 1
  " ```

" ### `airline-nvimlsp`
  " nvimlsp: https://github.com/neovim/nvim-lsp

  " Enable/disable nvimlsp integration
  " ```vim
  " let g:airline#extensions#nvimlsp#enabled = 1
  " ```

  " nvimlsp error_symbol
  " ```vim
  " let airline#extensions#nvimlsp#error_symbol = 'E:'
  " ```

  " nvimlsp warning
  " ```vim
  " let airline#extensions#nvimlsp#warning_symbol = 'W:'

" ### `airline-quickfix`
  " The quickfix extension is a simple built-in extension which determines
  " whether the buffer is a quickfix or location list buffer, and adjusts the
  " title accordingly.

  " Configure the title text for quickfix buffers
  " ```vim
  " let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
  " ```

  " Configure the title text for location list buffers
  " ```vim
  " let g:airline#extensions#quickfix#location_text = 'Location'
  " ```
  "

" ### `airline-tabline`·
  " Note: If you're using the ctrlspace tabline only the option marked with (c)
  " are supported!

  " Enable/disable enhanced tabline. (c)
let g:airline#extensions#tabline#enabled = 1

  " Enable/disable displaying open splits per tab (only when tabs are opened)
let g:airline#extensions#tabline#show_splits = 1

  " Switch position of buffers and tabs on splited tabline (c)
  " (only supported for ctrlspace plugin).
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1

  " Enable/disable displaying buffers with a single tab. (c)
let g:airline#extensions#tabline#show_buffers = 1

  " Note: If you are using neovim (has('tablineat') = 1), then you can click
  " on the tabline with the left mouse button to switch to that buffer, and
  " with the middle mouse button to delete that buffer.

  " if you want to show the current active buffer like this:
  " ----------------------
  " buffer <buffer> buffer `

  " Only makes sense, if g:airline_right_sep is not empty.
  " let g:airline#extensions#tabline#alt_sep = 1
"
  " Enable/disable displaying tabs, regardless of number. (c)
  " ```vim
  " let g:airline#extensions#tabline#show_tabs = 1
  " ```

  " Enable/disable displaying number of tabs in the right side:
  "
  " * 0 : Disable
  " * 1 : Not displayed if the number of tabs is less than 1
  " * 2 : Always displaying number of tabs in the right side
let g:airline#extensions#tabline#show_tab_count = 2

  " Configure filename match rules to exclude from the tabline.
  " ```vim
  " let g:airline#extensions#tabline#excludes = []
  " ```

  " Enable/disable display preview window buffer in the tabline.
let g:airline#extensions#tabline#exclude_preview = 1

  " configure how numbers are displayed in tab mode.
  " ```vim
  " let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
  " let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
  " let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

  " enable/disable displaying tab number in tabs mode.
  " ```vim
  " let g:airline#extensions#tabline#show_tab_nr = 1
  " ```

  " Enable/disable displaying tab number in tabs mode for ctrlspace. (c)
  " ```vim
  " let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 0
  " ```

  " Enable/disable displaying tab type (e.g. [buffers]/[tabs])
let g:airline#extensions#tabline#show_tab_type = 2


  " Show buffer label at first position:
let g:airline#extensions#tabline#buf_label_first = 1

  " Rename label for buffers (default: 'buffers') (c)
let g:airline#extensions#tabline#buffers_label = ''

  " Rename label for tabs (default: 'tabs') (c)
let g:airline#extensions#tabline#tabs_label = ''
"
  " Change the symbol for skipped tabs/buffers (default '...')
  " ```vim
  " let g:airline#extensions#tabline#overflow_marker = '…'
  " ```

  " Always show current tabpage/buffer first (default: 0)
  " ```vim
  " let airline#extensions#tabline#current_first = 1
  " ```

  " Enable/disable displaying index of the buffer.
  " `buffer_idx_mode` allows 3 different modes to access buffers from the
  " tabline. When enabled, numbers will be displayed in the tabline and
  " mappings will be exposed to allow you to select a buffer directly. In
  " default mode, when the variable is 1 Up to 10 mappings will be exposed.
  " Note: As 10 and 1 have same prefix, we use 0 to replace 10. So, <leader>0
  " will jump to tenth buffer. Those mappings are not automatically created,
  " vim-airline just exposes those `<Plug>AirlineSeelctTab` keys for you to map
  " to a convenient key
let g:airline#extensions#tabline#buffer_idx_mode = 1

  " Define the set of filetypes which are ignored for the selectTab
  " keymappings:
  " ```vim
  " let g:airline#extensions#tabline#keymap_ignored_filetypes =
  "         \ ['vimfiler', 'nerdtree']
  " ```

  " Configure the minimum number of buffers needed to show the tabline.
  "
  " Note: this setting only applies to a single tab and when `show_buffers` is
  " true.
  " ```vim
  " let g:airline#extensions#tabline#buffer_min_count = 0
  " ```
"
  " Configure the minimum number of tabs needed to show the tabline.
  "
  " Note: this setting only applies when `show_buffers` is false.
  " ```vim
  " let g:airline#extensions#tabline#tab_min_count = 0
  " ```

  " Configure whether close button should be shown:
  " ```vim
  " let g:airline#extensions#tabline#show_close_button = 1
  " ```

  " Configure symbol used to represent close button
  " ```vim
  " let g:airline#extensions#tabline#close_symbol = 'X'
  " ```

  " Preserve windows when closing a buffer from the bufferline
  " (neovim specific, only works with buffers and not real tabs, default: 0)
  " ```vim
  " let airline#extensions#tabline#middle_click_preserves_windows = 1
  " ```

" ### `airline-tagbar`
  " tagbar: https://github.com/majutsushi/tagbar

  " Enable/disable tagbar integration
  " ```vim
  " let g:airline#extensions#tagbar#enabled = 1
  " ```
  "
  " Change how tags are displayed (:help tagbar-statusline)
  " ```vim
  " let g:airline#extensions#tagbar#flags = ''  (default)
  " let g:airline#extensions#tagbar#flags = 'f'
  " let g:airline#extensions#tagbar#flags = 's'
  " let g:airline#extensions#tagbar#flags = 'p'
  " ```
  "
  " Configure how to search for the nearest tag (:help tagbar-statusline)
  " ```vim
  " let g:airline#extensions#tagbar#searchmethod = 'nearest-stl' (default)
  " let g:airline#extensions#tagbar#searchmethod = 'nearest'
  " let g:airline#extensions#tagbar#searchmethod = 'scoped-stl'
  " ```

" ### `airline-vimtex`
  " vimtex :https://github.com/lervag/vimtex
  " Shows the current file's vimtex related info.

  " Enable/disable vimtex integration
  " ```vim
  " let g:airline#extensions#vimtex#enabled = 1
  " ```

  " Left and right delimiters (shown only when status string is not empty)
  " ```vim
  " let g:airline#extensions#vimtex#left = "{"
  " let g:airline#extensions#vimtex#right = "}"
  " ```

  " State indicators:

  " The current tex file is the main project file
  " (nothing is shown by default)
  " ```vim
  " let g:airline#extensions#vimtex#main = ""
  " ```

  " The current tex file is a subfile of the project
  " and the compilation is set for the main file
  " ```vim
  " let g:airline#extensions#vimtex#sub_main = "m"
  " ```

  " The current tex file is a subfile of the project
  " and the compilation is set for this subfile
  " ```vim
  " let g:airline#extensions#vimtex#sub_local = "l"
  " ```

  " Single compilation is running
  " ```vim
  " let g:airline#extensions#vimtex#compiled = "c₁"
  " ```

  " Continuous compilation is running
  " ```vim
  " let g:airline#extensions#vimtex#continuous = "c"
  " ```

  " Viewer is opened
  " ```vim
  " let g:airline#extensions#vimtex#viewer = "v"
  " ```

" ### `airline-wordcount`
  " Enable/disable word counting of the document/visual selection
let g:airline#extensions#wordcount#enabled = 1

  " Set list of filetypes for which word counting is enabled:
  " ```vim
  " " The default value matches filetypes typically used for documentation
  " " such as markdown and help files. Default is:
  " let g:airline#extensions#wordcount#filetypes =
  "     \ ['asciidoc', 'help', 'mail', 'markdown', 'nroff', 'org', 'plaintex', 'rst', 'tex', 'text'])
  " " Use ['all'] to enable for all filetypes.

  " Defines how to display the wordcount statistics for the default formatter
  " Defaults are below.  If fmt_short isn't defined, fmt is used.
  " '%s' will be substituted by the word count
  " fmt_short is displayed when window width is less than 80
let g:airline#extensions#wordcount#formatter#default#fmt = '%s W'
let g:airline#extensions#wordcount#formatter#default#fmt_short = '%s W'

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
