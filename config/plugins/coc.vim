" # Description
  " File storing configuration options and method for the plugin `coc.nvim`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " The configurations of coc.nvim are stored in a file named
  " `coc-settings.json`. You can open it using `:CocConfig`. This will
  " create/open a global settings files in folder returned by
  " `coc#util#get_config_home()`

  " To create a configuration file used by project only, use |:CocLocalConfig| to
  " create/open `.vim/coc-settings.json` inside current workspace folder.
  "
  " The global configuration file can be created in another directory by setting
  " `g:coc_config_home` in your `.vimrc` or `init.vim`:
let g:coc_config_home = new_rtp . '/plugins/coc/'

  " Configure the directory which will be used to for coc data
  " files(extensions, mru and so on), default:
  " Windows: `~/AppData/Local/coc`
  " Other: `~/.config/coc`
let g:coc_data_home = vimrc_basedir . '/.installed_coc/'

  " Global extension names to install when they aren't installed.
  " ```vim
  " let " g:coc_global_extensions = ['coc-json', 'coc-git']
  " ```
  " Note: coc.nvim would try to install extensions that not installed in
  " this list after initialization.
let g:coc_global_extensions = [
    \ "coc-diagnostic",
    \ "coc-docker",
    \ "coc-explorer",
    \ "coc-fzf-preview",
    \ "coc-floatinput",
    \ "coc-git",
    \ "coc-html",
    \ "coc-htmldjango",
    \ "coc-jedi",
    \ "coc-json",
    \ "coc-lists",
    \ "coc-markdownlint",
    \ "coc-marketplace",
    \ "@yaegassy/coc-nginx",
    \ "coc-pydocstring",
    \ "coc-sh",
    \ "coc-snippets",
    \ "coc-svg",
    \ "coc-texlab",
    \ "coc-toml",
    \ "coc-vimlsp",
    \ "coc-yaml",
    \ "coc-eslint",
    \ "coc-tsserver",
  \]
    "coc-css",

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

  " Map for document filetypes so the server could handle current document
  " as another filetype, ex:
  " ```
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
let g:coc_filetype_map = {
  \ 'jinja': 'htmldjango',
\ }

  " Error character used for statusline, default: `E`
let g:coc_status_error_sign = " "

  " Warning character used for statusline, default: `W`
let g:coc_status_warning_sign = "⚠ "

  " # Mapping

  " Better scroll using <C-j> and <C-k> for suggestion/snippets
inoremap <expr><C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-h>"
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

  " Make <CR> to accept selected completion item or notify coc.nvim to format
  " <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " Use `<leader>j` and `<leader>k` to navigate diagnostics
  " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>j <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>k <Plug>(coc-diagnostic-next)

  " Open diagnostics list
nnoremap <leader>d :CocDiagnostics<CR>

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
