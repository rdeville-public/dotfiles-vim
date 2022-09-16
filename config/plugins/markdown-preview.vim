" # Description
  " File storing configuration options and method for the plugin `committia`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " vim/nvim will auto close current preview window when change from markdown
  " buffer to another buffer
let g:mkdp_auto_close = 1

  " vim/nvim will refresh markdown when save the buffer or leave from insert
  " mode, default 0 is auto refresh markdown as you edit or move the cursor
let g:mkdp_refresh_slow = 1

