" # Autocmd

" Set of commands run automatically

" Automatically delete trailing whitespace at end of line for every file
autocmd BufWrite * :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \  exe "normal! g`\"" |
  \ endif

autocmd VimEnter * colorscheme material-dark

"autocmd FileType vimwiki.markdown set ft=markdown.vimwiki
