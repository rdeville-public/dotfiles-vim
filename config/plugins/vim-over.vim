" # Description
  " File storing configuration options and method for the plugin `vim-over`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Sets the |:OverCommandLine| prompt.
let g:over_command_line_prompt = "﬌ "

  " Set to 1 the pattern highlight will follow the cursor on the
  "  :/ or :? command.
let g:over#command_line#search#enable_move_cursor = 1

  "  Instead of previewing the replacement next to the replaced pattern, it
  "  visually replaces the pattern instead.
  "Default:
  "  Not enabled. To enable, set it to 1.
let g:over#command_line#substitute#replace_pattern_visually = 1

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
