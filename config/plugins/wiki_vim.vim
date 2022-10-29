" # Description
  " File storing configuration options and method for the plugin `wiki`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " A dictionary that specifies the default configuration for |WikiExport|
  " options. See the specifications for the options for more information.
  "
  " List of filetypes for which |wiki.vim| should be enabled. If you want to
  " make Markdown the default filetype, add it as the first element to the list,
  " e.g.:
  " ```
  "   let g:wiki_filetypes = ['md', 'wiki']
  " ```
  " See also |g:wiki_link_extension|, which is often relevant in many filetypes.
let g:wiki_filetypes = ['md', 'wiki']

  " |wiki.vim| is inherently agnostic in that it assumes any recognized filetype
  " specifies a wiki. However, some people might want to load |wiki.vim| for
  " ONLY files within a globally specified directory |g:wiki_root|. To allow
  " this behaviour, one can set this option to 0.
let g:wiki_global_load = 0

  " A string with the index page name for the wiki. The value should not include
  " the file extension.
let g:wiki_index_name = "README"

  " A dictionary for configuring the journal/diary feature. Available options
  " are:"
  "   name
  "     Name of journal (used to set journal path)."
  "   frequency
  "     One of 'daily', 'weekly', or 'monthly'."
  "   date_format
  "     Dictionary of filename formats for the 'daily', 'weekly', and 'monthly'
  "     frequencies. The formats may contain the following keys:
  "       %y  year (two digits)
  "       %Y  year (four digits)
  "       %m  month (01..12)
  "       %d  day of month (01..31)
  "       %V  ISO week number with Monday as first day of week
  "       %U  week number with Sunday as first day of week
  "   index_use_journal_scheme
  "     Whether to use the `journal:` scheme when creating journal index with
  "     |WikiJournalIndex|.
let g:wiki_journal =
  \{
    \ 'name': 'journal',
    \ 'frequency': 'daily',
    \ 'date_format': {
    \   'daily' : '%Y-%m-%d',
    \   'weekly' : '%Y_w%V',
    \   'monthly' : '%Y_m%m',
    \ },
    \ 'index_use_journal_scheme': v:true,
  \}

if has('macunix')
  let g:root_journal = '~/Documents/perso/journal'
  let b:root_journal = '~/Documents/perso/journal'
elseif has('unix')
  let g:root_journal = '~/perso/journal'
  let b:root_journal = '~/perso/journal'
endif

  " Specify the extension that should be applied to wiki links. This should be
  " in the format `.ext`, e.g. `.md` or `.wiki`.
let g:wiki_link_extension = '.md'

  " This option may be used to pick the default style of link that will be used.
  " Available styles for the default target type are:
  "   `md` (|wiki-link-markdown|)
  "     Markdown style links.
  "   `wiki` (|wiki-link-wiki|)
  "     Wiki style links.
  "   `adoc_xref_bracket` (|wiki-link-adoc-xref|)
  "   `adoc_xref_inline`
  "     AsciiDoc cross-reference style links (angled brackets style or inline
  "     `xref:...` style).
  " Toggling between link types can still be achieved using |WikiLinkToggle|.
let g:wiki_link_target_type = 'md'

  " Option to specify the wiki root path, i.e. the wiki that is opened with the
  " `<leader>ww` mapping. The option value must be a string that is either
  "  i)   a specific path, or
  "  ii)  the name of a function that returns a path.
  " The latter method allows more flexible determination of the root path, e.g.
  " project specific root paths. An example:
  "  ```
  "  function! WikiRoot()
  "    let l:local = finddir('wiki', ';./')
  "   return !empty(l:local) ? l:local : '~/wiki'
  "  endfunction
  "  let g:wiki_root = 'WikiRoot'
  "  ```
  " This setting would first search for a `wiki` directory in the current
  " relative directory, and fallback to a global `wiki` if the local wiki is not
  " found.
  " Note: The (returned) path must be either a relative or absolute path to an
  "       existing directory.
function! WikiRoot()
  let l:type = "perso"
  if getcwd() =~# '^\(.*git.pro\|.*Documents.pro\|.*documents.pro\)'
    let l:type = "pro"
  endif
  if has('macunix')
    return '~/Documents/' . l:type
  elseif has('linux')
    return '~/' . l:type
  endif
endfunction
let g:wiki_root = 'WikiRoot'

" A list of templates for prefilling new pages. Each template should be
" specified as a dictionary with a matcher and a source. Matching may be done
" with regular expressions or with user functions. Similarly, sources can be
" specified as a file source as specified in |wiki-templates-format|, or as
" a user function with a single argument `context` as specified in
" |wiki-templates-context|.
" The possible dictionary keys of a template are:
"   match_re~
"     |String|
"     A regular expression that will be matched against the new page name.
"     Note: The name is not the same as the path and it does not include the
"           file name extension. For more advanced matching, you need a custom
"           matcher function, i.e. the next key.
"   match_func~
"     |Funcref|
"     A function that should return |v:true| if the template should be applied
"     or |v:false| if it should not apply.
"   source_filename~
"     |String|
"     The path to a template file. If this is a relative path, then it will be
"     relative to whichever path Vim or neovim is currently at when the
"     template is executed. If the template file is not found, then the
"     template will not be applied and the next template in the list will be
"     tried.
"   source_func~
"     |Funcref|
"     A user function that can use e.g. |append()| to add lines to the file.
" For example:
"   ```
"   function! TemplateFallback(context)
"     call append(0, '# ' . a:context.name)
"     call append(1, '')
"     call append(2, 'Foobar')
"   endfunction
"   let g:wiki_templates = [
"         \ { 'match_re': 'index',
"         \   'source_filename': '/home/user/templates/index.md'},
"         \ { 'match_re': 'foo',
"         \   'source_filename': '.footemplate.md'},
"         \ { 'match_func': {x -> v:true},
"         \   'source_func': function('TemplateFallback')},
"         \]
"   ```
" Notice that in the second template, the `;` is appended to the source
" filename. This means the template file is first searched for in the current
" directory of the new page, then in the parent directory, and so on. If the
" template file is not found, then the next template will be tried.
" let g:wiki_templates
"
" A string that specifies the title of the month template. The following keys
" are interpolated:
"   `%(month)`         Month number
"   `%(month-name)`    Name of month (see |g:wiki_month_names|)
"   `%(year)`          Year (4 digits)
" See |wiki-templates-journal-summaries| for more info.
" Default: `'# Summary, %(year) %(month-name)'`
"let g:wiki_template_title_month*
"
" A string that specifies the title of the week template. The following keys
" are interpolated:
"   `%(week)`    Week number
"   `%(year)`    Year (4 digits)
" See |wiki-templates-journal-summaries| for more info.
" Default: `'# Summary, %(year) week %(week)'`
"let g:wiki_template_title_week*
