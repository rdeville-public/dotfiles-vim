" The location of the taskrc file used by taskwiki. Defaults to ~/.taskrc.
" let g:taskwiki_taskrc_location = "~/perso/.taskrc"

" A dictionary containing alternative taskwarrior instance definitions.
" A key for any alternative taskwarrior definition must be a single,
" uppercase letter. Value is dictionary containing respective
" data_location and taskrc_location overrides.
" Example:
" let g:taskwiki_extra_warriors={
" \  'H':
" \  {
" \    'data_location': '/home/tbabej/.habit/',
" \    'taskrc_location': '/home/tbabej/.habitrc'
" \  }
" Specifying particular extra warrior in the viewport can be done using
" #[KEY] at the end of the viewport definition, in this case:
" ~   === Home habits | project:Home #H ===
"let g:taskwiki_extra_warriors =

" the default sort order used to sort the tasks within viewports. defaults to
" 'status+,end+,due+,priority-,project+'. expects a comma-separated list of
" attributes, optionally followed by + or - to denote the increasing or decreasing
" order, respectively.
let g:taskwiki_sort_order = 'status+,end+,due+,priority-,project+'

" The sort order can also be customized per viewport. This configuration
" variable stores a dictionary with the alternative sort order definitions,
" each indexed by a uppercase letter.
" Example:
" let g:taskwiki_sort_orders={"T": "project+,due-"}
" Specifying a particular sort order in the viewport can be achieved
" using $[KEY] at the end of the viewport definition, in this case:
" ~   === Work tasks by decreased due, grouped by project | project:Work $T ===
"let g:taskwiki_sort_orders=

"  Use to limit the width of any vertical split created by taskwiki.
let g:taskwiki_split_max_width = 50

" Use to limit the height of any vertical split created by taskwiki.
"let g:taskwiki_split_max_height =

" If set to a non-empty value (such as "yes"), taskwiki will try to
" use the same colors for task highlighting as those defined in
"taskwarrior.
let g:taskwiki_source_tw_colors = "yes"

" If set to a non-empty value (such as "yes"), taskwiki will not
" preserve folding when entering or leaving a vimwiki buffer.
let g:taskwiki_dont_preserve_folds = "yes"

" If set to any non-empty value (such as "yes"), taskwiki will not conceal
" characters on the cursor line in normal mode via `concealcursor=nc`.
let g:taskwiki_disable_concealcursor = ""

"  Setting any non-empty value for this variable will disable taskwiki.
"let g:taskwiki_disable = ""

" Setting this variable to non-empty value (such as "yes") will force
" taskwiki to use python2.
" Example:
" let g:taskwiki_use_python2="yes"
"let g:taskwiki_use_python2 = ""

" Setting this variable to a non-empty value (such as "yes") will
" prevent taskwiki from setting up any |<Leader>|-mappings. This is
" useful if you would rather specify your own mappings or have
" conflicting mappings.
" Example:
"let g:taskwiki_suppress_mappings="yes"
"let g:taskwiki_suppress_mappings = ""

" This variable sets the |maplocalleader| to the leader which will be
" used for all function mappings (unless |taskwiki_suppress_mappings| is
" set). If this variable is not set, <Leader>t will be used.
" Example:
" let g:taskwiki_maplocalleader=",t"
"let g:taskwiki_maplocalleader = ",t"

" This variable specifies the markup syntax you want to use in your
" VimWiki pages. Valid values are "default" and "markdown".
" Example:
" let g:taskwiki_markup_syntax = "default"
let g:taskwiki_markup_syntax = "markdown"
