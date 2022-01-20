" The Colorizer plugin can be configured to automatically load when opening a
" new file. Note that this might slow down the loading process, especially on
" the terminal. To enable this, simply set the variable 'g:colorizer_auto_color'
" to 1, e.g. by defining it in your |.vimrc|

let g:colorizer_auto_color = 0

" If you want to have certain filetypes automatically highlighted, you can use
" the variable g:colorizer_auto_filetype, e.g. to enable highlighting for
" HTML and CSS files by default, add the following to your |.vimrc|:

"let g:colorizer_auto_filetype = 'css,html'

" You can skip comments from being colored by setting the variable
" g:colorizer_skip_comments to 1:

let g:colorizer_skip_comments = 0

" By default, the colorings will be deleted if you switch to a different buffer
" in the same window by using a *BufLeave* autocommand. However that might
" unintentionally uncolor the current window, so if you experience a problem
" with that, try setting the variable g:colorizer_disable_bufleave like this:

let g:colorizer_disable_bufleave = 1

" (Neovim only)
"
" Rather than matching the colors add adding the corresponding syntax rules to
" them, it is possible to render the colors as swatches at the end of each line,
" leveraging Neovim's virtual text. To do this, you can set:
"
if has('nvim')
  let g:colorizer_use_virtual_text = 1
endif

" If you want to skip certain functions, you can set the variable
" g:colorizer_<name>_disable and then those functions won't be called anymore
" (e.g. do disable the colorname highlighting, put in your |.vimrc| this:
"
let g:colorizer_colornames_disable = 1

