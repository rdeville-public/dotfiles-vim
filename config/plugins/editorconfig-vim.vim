" # Description
  " File storing configuration options and method for the plugin `vim-airline`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " The way to show the line where the maximal length is reached. Accepted
  " values are `line`, `fill`, otherwise there will be no max line indicator.
  " * `line`:      the right column of the max line length column will be
  "                highlighted, made possible by setting `colorcolumn` to
  "                `max_line_length + 1`.
  " * `fill`:      all the columns to the right of the max line length column
  "                will be highlighted, made possible by setting 'colorcolumn'
  "                to a list of numbers starting from `max_line_length + 1` to
  "                the number of columns on the screen.
  " * `exceeding`: the right column of the max line length column will be
  "                highlighted on lines that exceed the max line length, made
  "                possible by adding a match for the ColorColumn group.
  " * `none`:      no max line length indicator will be shown. This is the
  "                recommended value when you do not want any indicator to be
  "                shown, but values other than `line` or `fill` would also work
  "                as `none`.
  " The default value is `line`.
let g:EditorConfig_max_line_indicator = "none"

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
