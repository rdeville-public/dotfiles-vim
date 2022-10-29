" # Description
  " File storing configuration options and method for the plugin
  " `vim-table-mode`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Use this option to define the table corner character:
let g:table_mode_corner = '|'

  " Set this to configure the mapping for inserting a table column before
  " the cursor.
  " I've set it to tih -> table insert left
let g:table_mode_insert_column_before_map = '<Leader>tiH'

  " Set this to configure the mapping for inserting a table column after
  " the cursor.
  " I've set it to til -> table insert right
let g:table_mode_insert_column_after_map = '<Leader>til'

  " Set this to configure the mapping for adding a formula for a table cell.
  let g:table_mode_add_formula_map = '<Leader>tfa'

  " Set this to configure the mapping for evaluating the formula line.
let g:table_mode_eval_formula_map = '<Leader>tfe'

  " Set this to configure the mapping for echoing the tablemode representation
  " of the current cell.
let g:table_mode_echo_cell_map = '<Leader>t?'

  " Set this to configure the mapping for sorting the table mode by
  " current column.
let g:table_mode_sort_map = '<Leader>ts'

