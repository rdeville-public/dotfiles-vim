" Set to 1 to enable the highlighting from the command line automatically
let g:over_enable_auto_nohlsearch = 1

" Set to 1 in order to enable the command line
let g:over_enable_cmd_window = 1

" Sets the |:OverCommandLine| prompt.
let g:over_command_line_prompt = "> "

" Set to 1 if you want to highlight :/ or :? searches.
let g:over#command_line#search#enable_incsearch = 1

" Set to 1 the pattern highlight will follow the cursor on the
"  :/ or :? command.
let g:over#command_line#search#enable_move_cursor = 1

" This is a generic way of remplacing the content of the paste buffer
" when you paste on the command line with <C-v>.
" Default: >
" ```vim
" " This will escape "\n" and "\r" automatically.
" let g:over#command_line#paste_filters = {
"   \ '\n' : '\\n',
"   \ '\r' : '\\r',
" \}
" ```
"
"  Instead of previewing the replacement next to the replaced pattern, it
"  visually replaces the pattern instead.
"Default:
"  Not enabled. To enable, set it to 1.
"Example: >
"  The wolf jumps over the sheep.
"       /\
"       || --- You want to replace 'wolf' with 'bear'.
"
"  The [wolf][bear] jumps over the sheep.
"       /\
"       || --- Here is how vim-over will show you the preview normally.
"
"  The [bear] jumps over the sheep.
"       /\
"       || --- Here is how vim-over will show you the preview with this
"              option enabled.
"<

let g:over#command_line#substitute#replace_pattern_visually = 1
