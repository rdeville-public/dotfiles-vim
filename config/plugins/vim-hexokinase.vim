" # Description
  " File storing configuration options and method for the plugin `vim-hexokinase`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " How to display the colour.
  " Checkout |hexokinase-custom-highlighters| to create your own
  " highlighter.
let g:Hexokinase_highlighters = [ 'foregroundfull' ]

  " Each string is a path to a file that can be used as a
  " palette.
  " MUST BE ABSOLUTE PATH
let g:Hexokinase_palettes = [
\ expand($HOME).'/.config/vim/config/plugins/vim-hexokinase/material_ui.json'
\]
