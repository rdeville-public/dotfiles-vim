" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1



  " Allows multipart alternative delimiters to be used when commenting in
  " visual/visual-block mode.
let g:NERDAllowAnyVisualDelims = 1

  " Forces right delimiters to be placed when doing visual-block comments.
let g:NERDBlockComIgnoreEmpty = 0

  " Specifies if empty lines should be commented (useful with regions).
let g:NERDCommentEmptyLines = 1

  " Changes behaviour of visual comments.
let g:NERDCommentWholeLinesInVMode = 2

  " Turn the default mappings on/off.
let g:NERDCreateDefaultMappings = 1

  " Add or override delimiters for any filetypes.
let g:NERDCustomDelimiter =
  \{
    \ 'markdown' :
      \{
      \ 'left': '<!--',
      \ 'right': '-->',
      \},
  \ }

  " Tells the script to use nested comments by default.
let g:NERDDefaultNesting = 0

  " Specifies how the NERD commenter menu will appear (if at all).
let g:NERDMenuMode = 1

  " Specifies what to use as the left delimiter placeholder when nesting
  " comments.
  " Example:
  " ```vim
  " let g:NERDLPlace= "[>"
  " let g:NERDRPlace= "<]"
  " ```

  " Specifies which filetypes may use placeholders when nesting comments.
let g:NERDUsePlaceHolders = 1

  " Tells the script whether to remove alternative comment delimiters when
  " uncommenting.
let g:NERDRemoveAltComs = 1

  " Tells the script to always remove the extra spaces when uncommenting
  " (regardless of whether NERDSpaceDelims is set).
let g:NERDRemoveExtraSpaces = 1

  " Specifies whether to add extra spaces around delimiters when commenting,
  " and whether to remove them when uncommenting.
let g:NERDSpaceDelims = 1

  " Specifies if trailing whitespace should be deleted when uncommenting.
let g:NERDTrimTrailingWhitespace= 0

  " Specifies whether to use the compact style sexy comments.
let g:NERDCompactSexyComs = 0

  " Specifies the default alignment to use, one of 'none', 'left', 'start', or
  " 'both'.
let g:NERDDefaultAlign = 'none'

  " Enable NERDCommenterToggle to check all selected lines is commented or not.
let g:NERDToggleCheckAllLines = 0

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
