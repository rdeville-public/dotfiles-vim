" # Description
  " File storing configuration options and method for the plugin `vim-devicons`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
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
let g:DevIconsEnableFolderExtensionPatternMatching = 0
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
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.envrc'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.envrc.ini'] = ''

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
