if has('nvim')
" # Description
  " File storing configuration options and method for the plugin `git-blame.nvim`.

" ## Configuration
  " Enables git-blame.nvim on neovim startup. You can toggle git blame messages
  " on/off with the :GitBlameToggle command.
  let g:gitblame_enabled = 0

  " The template for the blame message that will be shown.
  " Available options:
  " <author>, <committer>, <date>, <committer-date>, <summary>, <sha>
  let g:gitblame_message_template = ' <date> <sha>  <author> | <summary>'

  " The format of the date fields.
  " Available options:
  "   %r     relative date (e.g., 3 days ago)
  "   %a     abbreviated weekday name (e.g., Wed)
  "   %A     full weekday name (e.g., Wednesday)
  "   %b     abbreviated month name (e.g., Sep)
  "   %B     full month name (e.g., September)
  "   %c     date and time (e.g., 09/16/98 23:48:10)
  "   %d     day of the month (16) [01-31]
  "   %H     hour, using a 24-hour clock (23) [00-23]
  "   %I     hour, using a 12-hour clock (11) [01-12]
  "   %M     minute (48) [00-59]
  "   %m     month (09) [01-12]
  "   %p     either "am" or "pm" (pm)
  "   %S     second (10) [00-61]
  "   %w     weekday (3) [0-6 = Sunday-Saturday]
  "   %x     date (e.g., 09/16/98)
  "   %X     time (e.g., 23:48:10)
  "   %Y     full year (1998)
  "   %y     two-digit year (98) [00-99]
  "   %%     the character `%´
  let g:gitblame_date_format = '%Y/%m/%d %H:%M'

  " The highlight group for virtual text.
  "let g:gitblame_highlight_group = "GitBlame"

  " nvim_buf_set_extmark optional parameters
  " nvim_buf_set_extmark is the function used for setting the virtual text. You
  " can view an up-to-date full list of options in the Neovim documentation.
  " Warning: overwriting id and virt_text will break the plugin behavior.
  let g:gitblame_set_extmark_options = {
    \ 'virt_text_win_col': 82,
  \ }

  " Whether or not blame message should be displayed as virtual text. You may want
  " to disable this if you display the blame message in statusline.
  let g:gitblame_display_virtual_text = 1

endif