" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.

" # Global Variable

  " The configurations of coc.nvim are stored in a file named `coc-settings.json`.
  " You can open it using `:CocConfig`. This will create/open a global settings
  " files in folder returned by `coc#util#get_config_home()`
  "
  " To create a configuration file used by project only, use |:CocLocalConfig| to
  " create/open `.vim/coc-settings.json` inside current workspace folder.
  "
  " The global configuration file can be created in another directory by setting
  " `g:coc_config_home` in your `.vimrc` or `init.vim`: >
let g:coc_config_home = new_rtp . '/plugins/coc/'

  " Configure the directory which will be used to for coc data
  " files(extensions, mru and so on), default:

  " Windows: `~/AppData/Local/coc`
  " Other: `~/.config/coc`
let g:coc_data_home = new_rtp . '/plugins/coc/data'

  " Disable possible warning on startup for old vim/node version.
  " Default: 0
let g:coc_disable_startup_warning = 0

  " Disable uncaught error messages from node process of coc.nvim.
  " Default: 0
let g:coc_disable_uncaught_error = 0

  " Start `textprop` id offset of highlight namespaces on vim, change to
  " other value to avoid conflict.
  " Default: 1000
let g:coc_text_prop_offset = 1000

  " Channel timeout in seconds for request to node client.
  " Default: 30
let g:coc_channel_timeout = 30

  " Disable transparent cursor when CocList is activated.
  " Set it to `1` if you have issue with transparent
  " cursor.
  " Default: 0
let g:coc_disable_transparent_cursor = 0

  " Last message echoed from `doHover`, can be used in statusline.
  " Note: not used when floating or preview window used for `doHover`.
let g:coc_last_hover_message = 1

  " Start coc service on startup, use |CocStart| to start server when you
  " set it to 0.
  " Default: 1
let g:coc_start_at_startup = 1

  " Global extension names to install when they aren't installed.
  " ```vim
  " let " g:coc_global_extensions = ['coc-json', 'coc-git']
  " ```
  " Note: coc.nvim would try to install extensions that not installed in
  " this list after initialization.
let g:coc_global_extensions = [
    \ "coc-diagnostic",
    \ "coc-lists",
    \ "coc-marketplace",
    \ "coc-explorer",
    \ "coc-fzf-preview",
    \ "coc-floatinput",
    \ "coc-git",
    \ "coc-snippets",
    \ "coc-json",
    \ "coc-yaml",
    \ "coc-toml",
    \ "coc-jedi",
    \ "coc-pydocstring",
    \ "coc-vimlsp",
    \ "coc-html",
    \ "coc-markdownlint",
    \ "coc-sh",
    \ "coc-texlab",
    \ "coc-docker",
    \ "coc-svg",
    \ "@yaegassy/coc-nginx",
  \]

    "coc-css",
    "coc-html-css-support",

  " Use location list of |CocList| when jump to locations.
  "
  " Set it to 0 when you need customize behavior of location jump by use
  " |CocLocationsChange| and |" g:coc_jump_locations|
  "
  " If you want use vim's quickfix list instead, add
  " `"coc.preferences.useQuickfixForLocations": true` in your
  " configuration file, this configuration would be ignored and no autocmd
  " triggered.
  "
  " Default: 1
let g:coc_enable_locationlist = 0

  " Trigger key for going to the next snippet position, applied in insert
  " and select mode.
  "
  " Only works when snippet session is activated.
  "
  " Default: <C-j>
let g:coc_snippet_next = "<C-j>"

  " Trigger key for going to the previous snippet position, applied in
  " insert and select mode.
  "
  " Only works when snippet session is activated.
  "
  " Default: <C-k>
let g:coc_snippet_prev = "<C-k>"

  " Map for document filetypes so the server could handle current document
  " as another filetype, ex: >
  "
  " let " g:coc_filetype_map = {
  "   \ 'html.swig': 'html',
  "   \ 'wxss': 'css',
  "   \ }
  " ```
  " Default: {}
  "
  " Note: coc will always map filetype `javascript.jsx` to
  " `javascriptreact` and `typescript.tsx` to
  " `typescriptreact`. You can find the mapped filetype
  " of the current buffer by running `:CocCommand document.echoFiletype`.
let g:coc_filetype_map = {}

  " Add key mappings for making snippet select mode easier. >
  " ```vim
  " snoremap <silent> <BS> <c-g>c
  " snoremap <silent> <DEL> <c-g>c
  " snoremap <silent> <c-h> <c-g>c
  " snoremap <c-r> <c-g>"_c<c-r>
  " ```
  " Default: 1
let g:coc_selectmode_mapping = 1

  " Error character used for statusline, default: `E`
let g:coc_status_error_sign = " "

  " Warning character used for statusline, default: `W`
let g:coc_status_warning_sign = "⚠ "

  " Width of input prompt window, default `32`.
let g:coc_prompt_win_width = 32

" # Airline Integration

  " With vim-airline: https://github.com/vim-airline/vim-airline

  " Error and warning display should work in vim-airline out of box.

  " Change error symbol:
let airline#extensions#coc#error_symbol = ' '

  " Change warning symbol:
let airline#extensions#coc#warning_symbol = '⚠ '

  " Change error format:
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'

  " Change warning format:
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

for i_filename in ['config','mapping','autocmd']
  for f in split(glob(new_rtp . '/plugins/coc/extensions/*/' . i_filename .'.vim'), '\n')
    exe 'source' f
  endfor
endfor



" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
