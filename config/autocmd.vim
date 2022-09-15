" # Autocmd
  " Set of commands run automatically

  " Automatically delete trailing whitespace at end of line for every file if
  " not in Visual Multi Cursor Mode (either extended or cursor mode)
  autocmd BufWrite * if !exists('b:visual_multi') | :call DeleteTrailingWS() | endif

"if has('macunix')
"  " Macos fix to avoid crontab not to be set correctly because backup is written
"  " and not the cron file
"  autocmd filetype crontab setlocal nobackup nowritebackup
"endif
