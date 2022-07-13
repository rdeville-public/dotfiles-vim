" GLOBAL CONFIGURATION

"  Specify the cache directory for |wiki.vim|.
"  Default value: OS dependent
"    `Linux and MacOS`: '~/.cache/wiki.vim/'
"    `Windows`:         Standard temporary folder (based on |tempname()|)
" let g:wiki_cache_root

"  Specify whether to use persistent caching.
"  Default value: 1
" let g:wiki_cache_persistent*

"  Specify whether to use case-sensitive matching for omnicompletion of links
"  and tags.
"  Default value: 1
" let g:wiki_completion_case_sensitive*

"  Specify the executable for `date`, which is used "behind the scenes" to
"  manipulate and calculate dates for the journal features.
"
"  On MacOS/OSX, one can install `coreutils` from Homebrew and then use the
"  `gdate` program with: let g:wiki_date_exe = 'gdate'
"  Default: 'date'
" let g:wiki_date_exe = 'date'

"  A dictionary that specifies the default configuration for |WikiExport|
"  options. See the specifications for the options for more information.
"
"  Default: >
"    let g:wiki_export = {
"        \ 'args' : '',
"        \ 'from_format' : 'markdown',
"        \ 'ext' : 'pdf',
"        \ 'link_ext_replace': v:false,
"        \ 'view' : v:false,
"        \ 'output': fnamemodify(tempname(), ':h'),
"        \}
"let g:wiki_export

"  List of filetypes for which |wiki.vim| should be enabled. If you want to
"  make Markdown the default filetype, add it as the first element to the list,
"  e.g.: >
"    let g:wiki_filetypes = ['md', 'wiki']
"<
"  See also |g:wiki_link_extension|, which is often relevant in many filetypes.
"  Default: ['wiki']
let g:wiki_filetypes = ['md', 'wiki']

"  Name of a function or a |FuncRef| for a function that should be used to
"  handle local files (see also |wiki-link-url|). The function should give
"  a non-zero return value if it properly handled the URL. If not, the plugin
"  falls back to opening the URL with Vim. An example: >
"    let g:wiki_file_handler = 'WikiFileHandler'
"
"    function! WikiFileHandler(...) abort dict
"      if self.path =~# 'pdf$'
"        silent execute '!zathura' fnameescape(self.path) '&'
"        return 1
"      endif
"
"      return 0
"    endfunction
" let g:wiki_file_handler*

"  Key combination that, when pressed while searching with |WikiFzfPages|, will
"  create a new page with the name of the query. The value must be a string
"  recognized by fzf's `--expect` argument; see fzf's manual page for a list of
"  available keys.
"
"  Default: `'alt-enter'`
" let g:wiki_fzf_pages_force_create_key*

"  A string with additional user options for |WikiFzfPages|. This can be used
"  e.g. to add a previewer. Users should be aware that the page candidates are
"  "prettified" with the `--with-nth=1` and `-d` options for fzf, so to obtain
"  the page path in a previewer option one must use the field index expression 1.
"  E.g.: >
"
"    let g:wiki_fzf_pages_opts = '--preview "cat {1}"'
"<
"  Default: `''`
" let g:wiki_fzf_pages_opts*
"
"  |wiki.vim| is inherently agnostic in that it assumes any recognized filetype
"  specifies a wiki. However, some people might want to load |wiki.vim| for
"  ONLY files within a globally specified directory |g:wiki_root|. To allow
"  this behaviour, one can set this option to 0.
"
"  Default: 1
let g:wiki_global_load = 0

"  A string with the index page name for the wiki. The value should not include
"  the file extension.
"  Default: `'index'`
let g:wiki_index_name = "README"

"  A dictionary for configuring the journal/diary feature. Available options
"  are:"
"    name~
"      Name of journal (used to set journal path)."
"    frequency~
"      One of 'daily', 'weekly', or 'monthly'."
"    date_format~
"      Dictionary of filename formats for the 'daily', 'weekly', and 'monthly'
"      frequencies. The formats may contain the following keys:
"
"        %y  year (two digits)
"        %Y  year (four digits)
"        %m  month (01..12)
"        %d  day of month (01..31)
"        %V  ISO week number with Monday as first day of week
"        %U  week number with Sunday as first day of week
"
"    index_use_journal_scheme~
"      Whether to use the `journal:` scheme when creating journal index with
"      |WikiJournalIndex|.
"  Default: >
"    let g:wiki_journal = {
"          \ 'name': 'journal',
"          \ 'frequency': 'daily',
"          \ 'date_format': {
"          \   'daily' : '%Y-%m-%d',
"          \   'weekly' : '%Y_w%V',
"          \   'monthly' : '%Y_m%m',
"          \ },
"          \ 'index_use_journal_scheme': v:true,
"          \}
let g:wiki_journal = {
  \ 'name': 'journal',
  \ 'frequency': 'daily',
  \ 'date_format': {
  \   'daily' : '%Y-%m-%d',
  \   'weekly' : '%Y_w%V',
  \   'monthly' : '%Y_m%m',
  \ },
  \ 'index_use_journal_scheme': v:true,
\}
let g:root_journal = '/home/rdeville/perso/journal'
let b:root_journal = '/home/rdeville/perso/journal'
"
"*g:wiki_link_extension*
"  Specify the extension that should be applied to wiki links. This should be
"  in the format `.ext`, e.g. `.md` or `.wiki`.
"  Default: ''
let g:wiki_link_extension = '.md'
"
"  This option allows to disable the toggle behaviour in |WikiLinkFollow| where
"  "normal" text under the cursor is transformed into links. The behaviour is
"  enabled by default. If disabled, one may still use |WikiLinkToggle| to
"  transform text into links.
"  Default: 1
"*g:wiki_link_toggle_on_follow*
"
"  This option may be used to pick the default style of link that will be used.
"  Available styles for the default target type are:
"    `md` (|wiki-link-markdown|)
"      Markdown style links.
"    `wiki` (|wiki-link-wiki|)
"      Wiki style links.
"    `adoc_xref_bracket` (|wiki-link-adoc-xref|)
"    `adoc_xref_inline`
"      AsciiDoc cross-reference style links (angled brackets style or inline
"      `xref:...` style).
"
"  Toggling between link types can still be achieved using |WikiLinkToggle|.
"  Default: 'wiki'
let g:wiki_link_target_type = 'md'

"  This option specifies the template for toggling a specific type of link with
"  |WikiLingToggle| or |<plug>(wiki-link-toggle)|.
"  This allows to customize how links are changed when they are toggled. For
"  instance, to add/remove extensions for wiki and markdown style links, one
"  could use: >
"    function WikiToggleWiki(url, text) abort dict
"      return wiki#link#md#template(a:url . '.wiki',
"            \ empty(a:text) ? a:url : a:text)
"    endfunction
"    function WikiToggleMd(url, text) abort dict
"      let l:url = substitute(a:url, '\.wiki$', '', '')
"      return wiki#link#wiki#template(l:url, a:text)
"    endfunction
"    let g:wiki_link_toggles = {
"          \ 'md': 'WikiToggleMd',
"          \ 'wiki': 'WikiToggleWiki',
"          \}
"<
"  Default: >
"
"    let g:wiki_link_toggles = {
"          \ 'md': 'wiki#link#wiki#template',
"          \ 'wiki': 'wiki#link#md#template',
"          \ 'date': 'wiki#link#wiki#template',
"          \ 'shortcite': 'wiki#link#md#template',
"          \ 'url': 'wiki#link#md#template',
"          \}
" let g:wiki_link_toggles*
"
"  This option may be used to specify a map or transformation for page names
"  provided to |WikiOpen|. For example: >
"    let g:wiki_map_create_page = 'MyFunction'
"    function MyFunction(name) abort
"      let l:name = wiki#get_root() . '/' . a:name
"      " If the file is new, then append the current date
"      return filereadable(l:name)
"            \ ? a:name
"            \ : a:name . '_' . strftime('%Y%m%d')
"    endfunction
"<
"  With the above setting, if one enters a page name "foo" for |WikiOpen| on
"  the date 2020-04-11, the page "foo_20200411" will be created.
"
"  The option value should be a string (the `name` of the function) or
"  a |Funcref|. The latter only works in neovim when the option is defined from
"  Lua with |lua-vim-variables|, e.g. >
"
"    vim.g.wiki_map_create_page = function(x) return x:lower() end
"<
"  Default: ''
" let g:wiki_map_create_page*

"  This option may be used to transform text before creating a new link. An
"  example: >
"
"    let g:wiki_map_link_create = 'MyFunction'
"
"    function MyFunction(text) abort
"      return substitute(tolower(a:text), '\s\+', '-', 'g')
"    endfunction
"<
"  With the above setting, links created with |WikiLinkFollow| or
"  |WikiLinkToggle| (or related mappings) will be transformed by `MyFunction`.
"  As an example, if one creates a link from the text "Some text", the link
"  becomes "[[some-text|Some text]]".
"
"  The option value should be a string (the `name` of the function) or
"  a |Funcref|. The latter only works in neovim when the option is defined from
"  Lua with |lua-vim-variables|, e.g. >
"
"    vim.g.wiki_map_link_create = function(x) return x:lower() end
"<
"  Default: ''
" let g:wiki_map_link_create
"
"  Whether or not to use default mappings (see |wiki-mappings-default|). The
"  allowed values are:
"    'all'     use all default mappings
"    'local'   use only buffer-local default mappings
"    'global'  use only global default mappings
"    'none'    do not use any of the default mappings
"  Default: 'all'
" let g:wiki_mappings_use_defaults*

"  These options allow one to customize global and buffer local mappings
"  through dictionaries where the keys are the right-hand sides and the values
"  are the desired mappings, e.g.: >
"    let g:wiki_mappings_global = {
"        \ '<plug>(wiki-reload)' : ',wx',
"        \}
"<
"  This example maps `,wx` to |<plug>(wiki-reload)|. The other maps are kept at
"  their default (unless |g:wiki_mappings_use_default| specifies otherwise).
"  All default mappings are listed in |wiki-mappings-default|.
"
"  Some mappings are defined in other modes than normal mode. In this
"  case, one can use the following syntax: >
"
"    let g:wiki_mappings_local = {
"          \ '<plug>(wiki-export)' : '<c-p>',
"          \ 'x_<plug>(wiki-export)' : '<c-p>',
"          \}
"<
"  Here `<c-p>` is mapped to |<plug>(wiki-export)| in normal mode and
"  visual mode, respectively. The available `<plug>` mappings are listed in
"  |wiki-mappings|.
"
"  For any local mappings that should only be applied in journal entries,
"  consider setting |g:wiki_mappings_local_journal|. For example, similar to
"  above: >
"
"    let g:wiki_mappings_local_journal = {
"          \ '<plug>(wiki-journal-prev)' : '[w',
"          \ '<plug>(wiki-journal-next)' : ']w',
"          \}
"<
"  Here we create a pair of mappings `[w` and `]w` to navigate between journal
"  entries.
"
"  Default: Undefined
" let g:wiki_mappings_global
" let g:wiki_mappings_local
" let g:wiki_mappings_local_journal
"
"  A list of the names for each month. Used for interpolating month names in
"  the month template, |g:wiki_template_title_month|.
"
"  Default: `['January', 'February', ..., 'December']`
" let g:wiki_month_names*
"
"  The name of the function to resolve wiki-schemed links, i.e., the standard
"  link scheme. The default should work well for most people, but this option
"  allows to adjust the resolver to ones own liking.
"
"  The function takes two arguments:
"
"    fname~
"      The unresolved filename. This may be empty, which is typically the case
"      for inter-page links (e.g. `[[#SomeSection]]`).
"
"    origin~
"      The path of the origin file, i.e. the file from which the link was
"      activated. This may be empty if a link is followed programmatically from
"      an empty buffer.
"
"  The function must return an absolute path to the destination file.
"
"  Note: The function `wiki#get_root()` can be useful to get the path to the
"        wiki root.
"
"  Default: `'wiki#url#wiki#resolver'`
" let g:wiki_resolver
"
"  Option to specify the wiki root path, i.e. the wiki that is opened with the
"  `<leader>ww` mapping. The option value must be a string that is either
"
"    i)   a specific path, or
"    ii)  the name of a function that returns a path.
"
"  The latter method allows more flexible determination of the root path, e.g.
"  project specific root paths. An example: >
"
"    function! WikiRoot()
"      let l:local = finddir('wiki', ';./')
"      return !empty(l:local) ? l:local : '~/wiki'
"    endfunction
"
"    let g:wiki_root = 'WikiRoot'
"<
"  This setting would first search for a `wiki` directory in the current
"  relative directory, and fallback to a global `wiki` if the local wiki is not
"  found.
"
"  Note: The (returned) path must be either a relative or absolute path to an
"        existing directory.
"
"  Default: ''
function! WikiRoot()
  let l:local = finddir('docs', ';./')
  return !empty(l:local) ? l:local : '~/perso/'
endfunction

let g:wiki_root = 'WikiRoot'
"
"  The title of TOC listings.
"
"  Default: `'Contents'`
" let g:wiki_toc_title*
"
"  A dictionary that specifies the default options for |WikiTagList|.
"  Default: >
"    let g:wiki_tag_list = {
"        \ 'output' : 'loclist',
"        }
" let g:wiki_tag_list*
"
"  A dictionary that specifies the default options for |WikiTagSearch|.
"
"  Default: >
"    let g:wiki_tag_search = {
"        \ 'output' : 'loclist',
"        }
" let g:wiki_tag_search*
"
"  A list of parsers used to source the tags. The parsers are tried in the
"  order they're specified. If a parser matches, then it is selected and used.
"
"  A tag parser is a dictionary object with the following keys:
"
"    match~
"      A function (|FuncRef|) that takes a single argument, the current line.
"      It should return |v:true| or 1 if the line contains any tags.
"
"    parse~
"      A function (|FuncRef|) that takes a single argument, the current line.
"      It should return a list of the tags in the given line.
"
"    make~
"      A function (|FuncRef|) that takes two arguments: a list of tags, and the
"      current line. It should return a new line with the list of tags
"      formatted appropriately. This new line will replace the current line.
"      This function is used by |WikiTagRename|.
"
"    re_findstart~
"      `OPTIONAL`
"      A regular expression (|String|) that should match the start of the
"      current tag for tag completion (|wiki-completion|). See
"      |g:wiki#tags#default_parser| for an example.
"
"  As an example, one can use the following to parse tags in lines that match
"  `tags: keyword1, keyword2` in addition to the default parser: >
"
"    let g:wiki_tag_parsers = [
"          \ g:wiki#tags#default_parser,
"          \ { 'match': {x -> x =~# '^tags: '},
"          \   'parse': {x -> split(matchstr(x, '^tags:\zs.*'), '[ ,]\+')},
"          \   'make':  {t, x -> 'tags: ' . empty(t) ? '' : join(t, ', ')}}
"          \]
"<
"  See |g:wiki#tags#default_parser| for details on the default tag parser.
"
"  Default: >
"    let g:wiki_tag_parsers = [g:wiki#tags#default_parser]
"<
" let g:wiki_tag_parsers*
"
"  A number of lines to read from the top of a page when scanning tags. To scan
"  lines from the bottom, use a negative number, e.g. >
"    let g:wiki_tag_scan_num_lines = -10
"<
"  To scan the entire files, use: >
"    let g:wiki_tag_scan_num_lines = 'all'
"<
"  Default: >
"    let g:wiki_tag_scan_num_lines = 15
"<
" let g:wiki_tag_scan_num_lines = 15
"
"  A list of templates for prefilling new pages. Each template should be
"  specified as a dictionary with a matcher and a source. Matching may be done
"  with regular expressions or with user functions. Similarly, sources can be
"  specified as a file source as specified in |wiki-templates-format|, or as
"  a user function with a single argument `context` as specified in
"  |wiki-templates-context|.
"
"  The possible dictionary keys of a template are:
"
"    match_re~
"      |String|
"      A regular expression that will be matched against the new page name.
"
"      Note: The name is not the same as the path and it does not include the
"            file name extension. For more advanced matching, you need a custom
"            matcher function, i.e. the next key.
"
"    match_func~
"      |Funcref|
"      A function that should return |v:true| if the template should be applied
"      or |v:false| if it should not apply.
"
"    source_filename~
"      |String|
"      The path to a template file. If this is a relative path, then it will be
"      relative to whichever path Vim or neovim is currently at when the
"      template is executed. If the template file is not found, then the
"      template will not be applied and the next template in the list will be
"      tried.
"
"    source_func~
"      |Funcref|
"      A user function that can use e.g. |append()| to add lines to the file.
"
"  For example: >
"
"    function! TemplateFallback(context)
"      call append(0, '# ' . a:context.name)
"      call append(1, '')
"      call append(2, 'Foobar')
"    endfunction
"
"    let g:wiki_templates = [
"          \ { 'match_re': 'index',
"          \   'source_filename': '/home/user/templates/index.md'},
"          \ { 'match_re': 'foo',
"          \   'source_filename': '.footemplate.md'},
"          \ { 'match_func': {x -> v:true},
"          \   'source_func': function('TemplateFallback')},
"          \]
"<
"  Notice that in the second template, the `;` is appended to the source
"  filename. This means the template file is first searched for in the current
"  directory of the new page, then in the parent directory, and so on. If the
"  template file is not found, then the next template will be tried.
"
"  Default: `[]`
" let g:wiki_templates
"
"  A string that specifies the title of the month template. The following keys
"  are interpolated:
"
"    `%(month)`         Month number
"    `%(month-name)`    Name of month (see |g:wiki_month_names|)
"    `%(year)`          Year (4 digits)
"
"  See |wiki-templates-journal-summaries| for more info.
"
"  Default: `'# Summary, %(year) %(month-name)'`
"let g:wiki_template_title_month*
"
"  A string that specifies the title of the week template. The following keys
"  are interpolated:
"
"    `%(week)`    Week number
"    `%(year)`    Year (4 digits)
"
"  See |wiki-templates-journal-summaries| for more info.
"
"  Default: `'# Summary, %(year) week %(week)'`
"let g:wiki_template_title_week*
"
"  A dictionary that specifies which viewer to use for a given filetype. The
"  entry `_` specifies the fallback or generic viewer. This option thus allows
"  one to setup different viewers for different file types that are used by the
"  generic link scheme handler (|wiki-link-url|) and by |WikiExport|.
"
"  Default: >
"    let g:wiki_viewer = {
"        \ '_' : OS Dependent: 'xdg-open' (Linux) | 'open' (OSX),
"        \}
" let g:wiki_viewer*
"
"  Option to specify whether or not to save the current file automatically
"  before navigating (forward or backward) between wiki links.
"
"  Default: 0
" let g:wiki_write_on_nav = 1
"
"  A string that specifies the Zotero root folder used for the zotero URL
"  scheme, see |wiki-link-url|.
"
"  Default: `'~/.local/zotero'`
" let g:wiki_zotero_root*
