" The configuration file name.  This is passed to {fnames} argument of
" `localrc#load()`.
"
" default: ".local.vimrc"
let g:localrc_filename = ".vimrc.local"

" The name of configuration file for specific filetype.
" "%s" is replaced by filetype.
"
" default: '/^\.local\..*\<%s\>.*\.vimrc$'
let g:localrc_filetype = '/^\.vimrc\..*\<%s\>.*\.local$'
