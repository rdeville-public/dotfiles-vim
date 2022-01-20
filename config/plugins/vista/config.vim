" # Description

" File storing configuration options and method for the plugin `vim-devicons`.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed (like `startify_custom_footer`)

  " This variable controls the width of vista sidebar only.

  " Please use |g:vista_sidebar_open_cmd| if you want to have a full control of
  " the window opening.

  " Default: `30`
let g:vista_sidebar_width = 30

  " Set this option to `1` to keep the alternate buffer when opening vista
  " sidebar. See `:h keepalt` for more information.
  " "
  " Default: `0`
let g:vista_sidebar_keepalt = 0

  " This variable controls the icons used to indicate open or close folds.

  " Default: `['▼', '▶']`
let g:vista_fold_toggle_icons = ['▼', '▶']

  " Set this option to `0` to disable echoing when the cursor moves.
  "
  " Default: `1`
let g:vista_echo_cursor = "0"

  " Time delay for showing detailed symbol info at current cursor.

  " Default: `400`
let g:vista_cursor_delay = 500

  " How to show the detailed formation of current cursor symbol. Avaliable
  " options:

  " `echo`         - echo in the cmdline.
  " `scroll`       - make the source line of current tag at the center of the
  "                window.
  " `floating_win` - display in neovim's floating window or vim's popup window.
  "                See if you have neovim's floating window support via
  "                `:echo exists('*nvim_open_win')` or vim's popup feature
  "                via `:echo exists('*popup_create')`
  " `both`         - both `echo` and `floating_win` if it's avaliable otherwise
  "                `scroll` will be used.
  " Default: `echo`
let g:vista_echo_cursor_strategy = "both"

  " Update the vista on |TextChanged| and |TextChangedI|.

  " Default: `0`
let g:vista_update_on_text_changed = 0

  " Set this option to `1` to close the vista window automatically
  " close when you jump to a symbol.

  " Default: `0`
let g:vista_close_on_jump = 0

  " Close the vista window when you select an item from the fzf search window.

  " Default: `0`
let g:vista_close_on_fzf_select = 0

  " Move to the vista window when it is opened. Set this option to `0` to stay
  " in current windown when opening the vista sidebar.

  " Default: `1`
let g:vista_stay_on_open = 0

  " Executive used when opening vista sidebar without specifying it. This also
  " applys to the vista finder.

  " See all the avaliable executives via `:echo g:vista#executives` .

  " Default: `ctags`
let g:vista_default_executive = 'ctags'

  " Set the executive for some filetypes explicitly, which is useful for setting
  " `ctags` as the default executive, whereas you prefer to use LSP for some
  " filetypes when you ensure that the related LSP server has been installed.

  " The rationale is the LSP server has to be installed first explicitly and
  " people normally only install a few frequently used ones, but ctags supports
  " much more languages by default.
  " >
  " let g:vista_default_executive = 'ctags'

  " let g:vista_executive_for = {
  "     \ 'cpp': 'vim_lsp',
  "     \ 'php': 'vim_lsp',
  "     \ }
  " <
  "
  " You can also set `toc` or some extension name for markdown like document to
  " use the builtin toc extension in vista.vim. For `toc`, it actuallys derives
  " the extension using the `&filetype`.
  " >
  " Use the markdown extension for vimwiki and pandoc filetype.
  " let g:vista_executive_for = {
  "     \ 'vimwiki': 'markdown',
  "     \ 'pandoc': 'markdown',
  "     \ 'markdown': 'toc',
  "     \ }
  " <

  " Default: `{}`
let g:vista_executive_for = {
  \ 'vimwiki': 'markdown',
  \ 'pandoc': 'markdown',
  \ }


  " Set this variable to `1` to keep the original |g:fzf_colors| when using fzf
  " finder in vista.vim.

  " Default: `0`
let g:vista_keep_fzf_colors = 0

  " Fall back to other executives if the specified one gives empty data.
  " This is useful if you want to switch to `ctags` when LSP is not usable.
  " By default it's all the provided executives excluding the tried one.

  " Default: `['coc']`
let g:vista_finder_alternative_executives = ['coc', 'markdown']

  " Vista.vim has a builtin statusline renderer, which may cause some problems
  " if you use other statusline plugins at the same time. Hence it's disabled
  " by default if you have installed airline or lightline.

  " Default: `exists('g:loaded_airline') || exists('g:loaded_lightline')`
let g:vista_disable_statusline = 0

  " By default vista.vim will try to highlight the tag precisely in the vista window.
  " Set this to `1` to always higlight the whole line.

  " Default: `0`
let g:vista_highlight_whole_line = 0

  " Use markdown extension instead of the ctags executive.

  " Default: `1`
let g:vista_enable_markdown_extension = 0

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
