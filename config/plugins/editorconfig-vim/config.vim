" # Description

" File storing configuration options and method for the plugin.

" # Configuration

  " Specify the mode of EditorConfig core. Generally it is OK to leave this
  " option empty. Currently, the supported modes are `vim_core` (default) and
  " `external_command`.
  "
  " * `vim_core`: Use the included VimScript EditorConfig Core.
  " * `external_command`: Run external EditorConfig Core.
  "
  " If `g:EditorConfig_core_mode` is not specified, this plugin will
  " automatically choose `vim_core`.
  "
  " If you choose `external_command` mode, you must also set
  " `g:EditorConfig_exec_path`.
  "
  " Changes to `g:EditorConfig_core_mode` will not take effect until Vim
  " is restarted.
let g:EditorConfig_core_mode = "vim_core"

  " This is a buffer-local variable that disables the EditorConfig plugin for a
  " single buffer.
  "
  " Example: Disable EditorConfig for the current buffer:
  " ```vim
  " let b:EditorConfig_disable = 1
  " ```
  "
  " Example: Disable EditorConfig for all git commit messages:
  " ```
  "  au FileType gitcommit let b:EditorConfig_disable = 1
  " ```vim

  " This is a list contains file path patterns which will be ignored by
  " EditorConfig plugin. When the path of the opened buffer (i.e.
  " `expand('%:p')`) matches any of the patterns in the list, EditorConfig will
  " not load for this file. The default is an empty list.
  "
  " Example: Avoid loading EditorConfig for any remote files over ssh
  " ```vim
  " let g:EditorConfig_exclude_patterns = ['scp://.*']
  " ```

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


 " Set this to 1 if you don't want your formatoptions modified when
 " max_line_length is set:
let g:EditorConfig_preserve_formatoptions = 0

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent:fdi=
" ------------------------------------------------------------------------------
