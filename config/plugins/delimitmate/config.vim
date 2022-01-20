" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.


" Turns off the script.
" let g:loaded_delimitMate = 1

" Auto add closing delimiter
let g:delimitMate_autoclose = 1

" Set of pair managed by delimitmate
let delimitMate_matchpairs = "(:),[:],{:},<:>"

" Use this option to tell delimitMate which characters should be considered as
" quotes
let delimitMate_quotes = "\" ' `"

" When adding a third quote listed in this option is inserted, three quotes will
" be inserted to the right of the cursor and the cursor will stay in the middle.
let delimitMate_nesting_quotes = ['"','`']

" This option turns on/off the expansion of <CR>.
let delimitMate_expand_cr = 0

" This option turns on/off the expansion of <Space>.
let delimitMate_expand_space = 0

" When this option is set to 1 the expansion of space and cr will also be
" applied to quotes.
let delimitMate_expand_inside_quotes = 0

" This option turns on/off the jumping over <CR> and <Space> expansions when
" inserting closing matchpairs.
let delimitMate_jump_expansion = 0

" This option turns on/off the balancing of matching pairs.
let delimitMate_balance_matchpairs = 0

" This options turns delimitMate off for the listed regions
let delimitMate_excluded_regions = ""

" This options turns delimitMate off for the listed file types, use this option
" only if you don't want any of the features it provides on those file types.
" let delimitMate_excluded_ft = "mail,txt"
"
" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
