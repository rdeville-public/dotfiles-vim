" # Description

" File storing configuration options and method for the plugin `vim-devicons`.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed (like `startify_custom_footer`)

" ## Plugins Integration
  " Loading the plugin
let g:webdevicons_enable = 1
  " Adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
  " Adding the custom source to unite
let g:webdevicons_enable_unite = 1
  " Adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
  " Adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
  " Adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
  " CtrlP glyphs
let g:webdevicons_enable_ctrlp = 1
  " Adding to vim-startify screen
let g:webdevicons_enable_startify = 1
  " Adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
  " Turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
  " Use double-width(1) or single-width(0) glyphs
  " Only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
  " Whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
  " The amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
  " Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
  " Adding the custom source to denite
let g:webdevicons_enable_denite = 1

" ## Configuration
  " Change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
  " Set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
  " disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
  " Enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  " Enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
  " Enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
  " Enable file extension pattern matching glyphs on folder/directory (disabled by
  " default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 1
  " Enable custom folder/directory glyph exact matching
  " (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
  " Change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  " Change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = ''

  " Change the default dictionary mappings for file extension matches add or
  " override individual additional filetypes
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['un~'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sw*'] = ''

  " Add or override pattern matches for filetypes these take precedence over the
  " file extensions
  " ```vim
  " " Currently not set in the configuration file but kept it as example
  " let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
  " let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
  " let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.sw*$'] = ''
  " ```

  " Add or override pattern matches for filetypes these take precedence over the
  " file extension
  " ```vim
  " " Currently not set in the configuration file but kept it as example
  " let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
  " let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
  " ```

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
