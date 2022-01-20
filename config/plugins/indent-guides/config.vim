" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed (like `startify_custom_footer`)

  " Use this option to control how many indent levels to display guides for.
let g:indent_guides_indent_levels = 30

  " Use this option to control whether or not the plugin automatically
  " calculates the highlight colors. Will use the current colorscheme's
  " background color as a base color.
  "
  " If you set this option to 0, be sure to manually define some highlight
  " colors in an autocmd.
let g:indent_guides_auto_colors = 1

  " Use this option to control the percent at which the highlight colors will
  " be lightened or darkened.
let g:indent_guides_color_change_percent = 10

  " Use this option to customize the size of the indent guide. By default the
  " value is set to 0, which will set the guide size to be the same as the
  " |shiftwidth|. Setting this value to be larger than the |shiftwidth| is
  " essentially the same as setting it to 0.
  "
  " A common use of this setting is to create skinny indent guides, which look
  " great with a |shiftwidth| of 4 or more.
  "
  " NOTE: This option only works for soft-tabs (spaces) and not hard-tabs.
let g:indent_guides_guide_size = 0

  " Use this option to control which indent level to start showing guides from.
let g:indent_guides_start_level = 2

  " Use this option to control whether the plugin considers spaces as
  " indention.
let g:indent_guides_space_guides = 1

  " Use this option to control whether the plugin considers tabs as indention.
let g:indent_guides_tab_guides = 1

  " Use this option to explicitly specify a pattern for soft indentation. For
  " example to match spaces only in the beginning of line use ' ' pattern.
let g:indent_guides_soft_pattern = '\s'

  " Use this option to control whether the plugin is enabled on Vim startup.
let g:indent_guides_enable_on_vim_startup = 1

  " Use this option to specify a list of filetypes to disable the plugin for.
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'taskreport']

  " Use this option to control whether the default mapping (<Leader>ig) gets set.
let g:indent_guides_default_mapping = 0

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
