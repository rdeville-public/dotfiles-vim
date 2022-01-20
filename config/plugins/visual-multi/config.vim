" # Description

" File storing configuration options and method for the plugin.

" # Configuration
"
" Set of configuration options for the plugin. Note that not all possible
" variable are set in the file. Variable I know I will never update or check its
" value are not listed.
"
  "  Controls VM default highlighting style for patterns matched, but not
  "  selected. Possible useful values are 'underline' and 'red'.
  "  Otherwise an empty string if you want the normal `Search` highlight, or
  "  a full highlight command (help `:hi`), e.g.:  >
let g:VM_highlight_matches = 'underline'

  "  Enable statusline when VM is active.
  "  With a value of 1, the statusline will be set once, on VM start.
  "  With a value of 2, the statusline will be refreshed on `CursorHold` event.
  "  With a value of 3, also on `CursorMoved` event.
let g:VM_set_statusline = 1


  "  Don't display a message when exiting VM. You may prefer it if you already set
  "  up statusline integration.
let g:VM_silent_exit = 0

  "  So that you don't have to type <Esc> twice. If you set this to 1, maybe you
  "  can remap `Reselect Last`, so that you can quickly restart VM with your last
  "  selection. See `vm-quick-reference`.
let g:VM_quit_after_leaving_insert_mode = 1

  "  When entering VM and there are mapping conflicts, a warning is displayed. Set
  "  to 0 to disable this warning. You can still run `:VMDebug` to see if there
  "  are conflicts.
let g:VM_show_warnings = 1

  "  Set to 1 if you want command prompts to be more informative, rather than as
  "  minimal as possible.
let g:VM_verbose_commands = 0

  "  When adding cursors up/down, skip shorter lines.
let g:VM_skip_shorter_lines = 1

  "  When adding cursors up/down, skip empty lines.
let g:VM_skip_empty_lines = 1

  "  Controls how often text is updated in insert mode.
let g:VM_live_editing = 1

  "  The first region will be reselected after most commands, if set to 1.
let g:VM_reselect_first = 0

  "  Possible values: 'smart', 'sensitive', 'ignore'.
  "  Starting case matching for patterns. Can be switched inside VM.
  "  Leave empty to use your current setting.
let g:VM_case_setting = 'smart'

  "  You could want to do it for performance reasons.
let g:VM_disable_syntax_in_imode = 0

  "  To remap VM keys while preserving the function of the original VM mapping.
  "  Example:
  "  ```vim
  "  " also use <c-p> to select previous and <c-s> to skip current
  "  let g:VM_custom_remaps = {'<c-p>': 'N', '<c-s>': 'q'}
  "  ```
  "
  "
  "  To remap any key to normal! commands. Example:
  "  would create commands that will work on all cursors inside VM, for each
  "  key-value pair. It's a way to remap built-in vim commands, without having
  "  too many default mappings that can cause conflicts with other plugins. They
  "  only work in (and enforce) cursor mode.
  "  Example:
  "  ```vim
  "  let g:VM_custom_noremaps = {'==': '==', '<<': '<<', '>>': '>>'}
  "  ```

  "  To remap any standard motion (h,j,k,l,f...) commands. For example this
  "  inverts 'h' and 'l' motions:
  "  ```vim
  "  let g:VM_custom_motions  = {'h': 'l', 'l': 'h'}
  "  ```
  "  It can be useful if you use keyboard layouts other than QWERTY. Valid motions
  "  that you can remap are:
  "  ```vim
  "    h j k l w W b B e E ge gE , ; $ 0 ^ % \` f F t T
  "  ```
  "
  "
  "  Cursor mode only. The elements of the list can be simple strings (then
  "  any text object can be accepted) or a dictionary with the operator as key,
  "  and the number of characters to be typed as value. Example:
  "  ```vim
  "  let VM_user_operators = ['yd', 'cx', {'cs': 2}]
  "  ```
  "  This will accept commands like `ydE`, `cxiw`, or `cs` followed by two
  "  characters, for example `cs{[`. These operators can be either vim or
  "  plugin operators, mappings are passed recursively.
  "
  "  Note: `vim-surround` and `vim-abolish` have built-in support, this isn't
  "  needed for them to work.

  "  In insert mode, the active cursor is normally the last selected one. Set this
  "  option to `1` to always use the first cursor in the line.
let g:VM_use_first_cursor_in_line = 0

  "  Some keys in insert mode can have a different behaviour, compared to vim
  "  defaults. Possible values:
  "
  "  `c-a`  <C-A> go to the beginning of the line, at indent level
  "  `c-e`  <C-E> go to the end of the line
  "  `c-v`  <C-V> paste from VM unnamed register
  "
  "   Example:
  "   ```vim
  "   let g:VM_insert_special_keys = ['c-v']
  "   ```

  " Set to 0 to disable entirely insert mode mappings to cycle cursors in
  " `vm-single-mode`. If you only want to change the default mappings, see
  " `vm-mappings-buffer`.
let g:VM_single_mode_maps = 1

  " If insert mode is entered while `vm-single-mode` is enabled, it will be reset
  " automatically when exiting insert mode, unless this value is 0.
let g:VM_single_mode_auto_reset = 1

  "  VM won't start if buffer size is greater than this.
let g:VM_filesize_limit = 0

  "  If true VM registers will be stored in the `viminfo`. The 'viminfo' option
  "  must include !, for this to work. Also see `:VMRegisters`.
let g:VM_persistent_registers = 0

  "  Autoindentation (via `indentkeys`) is temporarily disabled in insert mode,
  "  and you have to reindent edited lines yoursef. For filetypes included in this
  "  list, edited lines are automatically reindented when exiting insert mode.
let g:VM_reindent_filetypes = []

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
