" # Description
  " File storing configuration options and method for the plugin `vista`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Set this option to `0` to disable echoing when the cursor moves.
  let g:vista_echo_cursor = "0"

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
  let g:vista_echo_cursor_strategy = "both"

  " Move to the vista window when it is opened. Set this option to `0` to stay
  " in current windown when opening the vista sidebar.
  let g:vista_stay_on_open = 0

  " Set the executive for some filetypes explicitly, which is useful for setting
  " `ctags` as the default executive, whereas you prefer to use LSP for some
  " filetypes when you ensure that the related LSP server has been installed.

  let g:vista_default_executive = 'coc'

  " You can also set `toc` or some extension name for markdown like document to
  " use the builtin toc extension in vista.vim. For `toc`, it actuallys derives
  " the extension using the `&filetype`.
  let g:vista_executive_for = {
    \ 'vimwiki': 'markdown',
    \ 'pandoc': 'markdown',
    \ }


  " Fall back to other executives if the specified one gives empty data.
  " This is useful if you want to switch to `ctags` when LSP is not usable.
  " By default it's all the provided executives excluding the tried one.
  let g:vista_finder_alternative_executives = ['markdown', 'fzf', 'ctags']

  " Use markdown extension instead of the ctags executive.
  let g:vista_enable_markdown_extension = 0



  " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \   "variables": "\uf71b",
  \   "var": "\uf71b",
  \  }


" ## Autocommand
"
  " Autozoom and unzoom when entering or leaving tagbar
  autocmd BufEnter *_vista_* :vertical resize 80
  autocmd BufLeave *_vista_* :vertical resize 15

" ## Mapping
  nnoremap <leader>v :Vista!!<CR>

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
