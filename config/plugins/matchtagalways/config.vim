" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.
"
  " This option holds all the filetypes for which this plugin will try to find
  " and highlight enclosing tags. It's a Vim dictionary with keys being Vim
  " filetypes. The values set for those keys don't matter and are not checked,
  " the only thing that matters is that a key is present in the dictionary (VimL
  " has no sets).
  "
  " You can find out what the current file's filetype is in Vim with ':set ft?'.
  " Don't forget that question mark at the end!
let g:mta_filetypes = {
  \ 'html'  : 1,
  \ 'xhtml' : 1,
  \ 'xml'   : 1,
  \ 'jinja' : 1,
  \}

  " When set to 1, forces the use of the MatchParen [6] syntax group. This is the
  " same group that Vim uses to highlight parens, braces etc. This option is
  " useful for people who want to use the same highlight color for both
  " constructs.
  "
  " When set to 0, MTA will use a custom 'MatchTag' syntax group with a default
  " highlight color. See the |g:mta_set_default_matchtag_color| option for
  " instructions on how to change that color.
  "
  " By default, this option is set to 1 because this makes it very unlikely that
  " your colorscheme will conflict with the default colors used for the
  " 'MatchTag' group. It's the safe choice. Feel free to toggle this option to 0
  " (the author uses it like this).
let g:mta_use_matchparen_group = 1

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
