" # Description
  " File storing configuration options and method for the plugin `ultisnips`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.


" Defines how the edit window is opened. Possible values:
" - normal     : Default. Opens in the current window.
" - tabdo      : Opens the window in a new tab.
" - horizontal : Splits the window horizontally.
" - vertical   : Splits the window vertically.
" - context    : Splits the window vertically or horizontally depending on
"                context.
let g:UltiSnipsEditSplit = "horizontal"

" Enable looking for SnipMate snippets in &runtimepath. UltiSnips will search
" only for directories named 'snippets' while looking for SnipMate snippets.
" Defaults to "1", so UltiSnips will look for SnipMate snippets.
let g:UltiSnipsEnableSnipMate = 0

