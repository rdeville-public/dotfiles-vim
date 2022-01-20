" GLOBAL CONFIGURATION
" =============================================================================
" Highlight headers with =Reddish=, ==Greenish==, ===Blueish=== colors.
" Value   Description~
" 1       Use VimwikiHeader1 - VimwikiHeader6 group colors to highlight different
"         header levels.
" 0       Use |hl-Title| color for headers.
" Default: 0
let g:vimwiki_hl_headers = 1

" Highlight checked list items with a special color:
"   * [X] the whole line can be highlighted with the option set to 1.
"     * this line is highlighted as well with the option set to 2
"   * [ ] this line is never highlighted
" Value           Description~
" 0               Don't highlight anything.
" 1               Highlight only the first line of a checked [X] list item.
" 2               Highlight a complete checked list item and all its child items.
" Default: 0 The |group-name| "Comment" is used for highlighting.
" Note: Option 2 does not work perfectly.  Specifically, it might break if the
" list item contains preformatted text or if you mix tabs and spaces for
" indenting.  Also, indented headers can be highlighted erroneously.
" Furthermore, if your list is long, Vim's highlight can break. To solve this,
" consider putting >
"  au BufEnter *.wiki :syntax sync fromstart
" in your .vimrc
let g:vimwiki_hl_cb_checked = 0

" Control the creation of |vimwiki-temporary-wiki|s.
" If a file with a registered extension (see |vimwiki-register-extension|) is
" opened in a directory that is: 1) not listed in |g:vimwiki_list|, and 2) not a
" subdirectory of any such directory, then:
" Value           Description~
" 1               make temporary wiki and append it to |g:vimwiki_list|.
" 0               don't make temporary wiki in that dir.
" If your preferred wiki extension is .txt then you can >
"     let g:vimwiki_global_ext = 0
" to restrict Vimwiki's operation to only those paths listed in g:vimwiki_list.
" Other text files wouldn't be treated as wiki pages.
" Default: 1
let g:vimwiki_global_ext = 0

" A many-to-one mapping between file extensions and syntaxes whose purpose is to
" register the extensions with Vimwiki.
" E.g.: >
"   let g:vimwiki_ext2syntax = {'.md': 'markdown',
"                   \ '.mkd': 'markdown',
"                   \ '.wiki': 'media'}
" An extension that is registered with Vimwiki can trigger creation of
" a |vimwiki-temporary-wiki|. File extensions used in |g:vimwiki_list| are
" automatically registered with Vimwiki using the default syntax. Extensions
" mapped with this option will instead use the mapped syntax.
" Default: >
"     {'.md': 'markdown', '.mkdn': 'markdown',
"     \  '.mdwn': 'markdown', '.mdown': 'markdown',
"     \  '.markdown': 'markdown', '.mw': 'media'}},
" Note: setting this option will overwrite the default values so include them if
" desired.
let g:vimwiki_ext2syntax = {
\ '.md': 'markdown',
\ '.mkdn': 'markdown',
\ '.mdwn': 'markdown',
\ '.mdown': 'markdown',
\ '.markdown': 'markdown',
\ '.wiki': 'markdown',
\ '.mw': 'media'
\ }

" Create a menu in the menu bar of GVim, where you can open the available wikis.
" If the wiki has an assigned name (see |vimwiki-option-name|), the menu entry
" will match the name. Otherwise, the final folder of |vimwiki-option-path| will
" be used for the name. If there are duplicate entries the index number from
" |g:vimwiki_list| will be appended to the name.
" Value              Description~
" ''                 No menu
" 'Vimwiki'          Top level menu "Vimwiki"
" 'Plugin.Vimwiki'   "Vimwiki" submenu of top level menu "Plugin"
" etc.
" Default: 'Vimwiki'
let g:vimwiki_menu = ""
"
" String of at least two symbols to show the progression of todo list items.
" Default value is ' .oOX'.
" The first char is for 0% done items.
" The last is for 100% done items.
" You can set it to some more fancy symbols like this:
" >
"    let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_listsyms = "▁▂▃▄▅▆▇█✔"

" Character that is used to show that an item of a todo list will not be done.
" Default value is '-'.
" The character used here must not be part of |g:vimwiki_listsyms|.
" You can set it to a more fancy symbol like this:
" >
"    let g:vimwiki_listsym_rejected = '✗'
let g:vimwiki_listsym_rejected= "✗"

" Enable/disable Vimwiki's folding (outline) functionality. Folding in Vimwiki
" can use either the 'expr' or the 'syntax' |foldmethod| of Vim.
" Value           Description~
" ''              Disable folding
" 'expr'          Folding based on expression (folds sections and code blocks)
" 'syntax'        Folding based on syntax (folds sections; slower than 'expr')
" 'list'          Folding based on expression (folds list subitems; much slower)
" 'custom'        Allow folding options to be set by another plugin or a vim
"                 configuration file
" Default: ''
" Limitations:
"   - Opening very large files may be slow when folding is enabled.
"   - 'list' folding is particularly slow with larger files.
"   - 'list' is intended to work with lists nicely indented with 'shiftwidth'.
"   - 'syntax' is only available for the default syntax so far.
" The options above can be suffixed with ':quick' (e.g.: 'expr:quick') in order
" to use some workarounds to make folds work faster.
let g:vimwiki_folding = "custom"

" This is HTML related.
" Convert newlines to <br />s in multiline list items.
" Value           Description~
" 0               Newlines in a list item are converted to <br />s.
" 1               Ignore newlines.
" Default: 1
let g:vimwiki_list_ignore_newline = 1

" This is HTML related.
" Convert newlines to <br />s in text.
" Value           Description~
" 0               Newlines in text are converted to <br />s.
" 1               Ignore newlines.
" Default: 1
let g:vimwiki_text_ignore_newline = 1

" Create new or open existing diary wiki-file for the date selected in Calendar.
" See |vimwiki-calendar|.
" Value           Description~
" 0               Do not use calendar.
" 1               Use calendar.
" Default: 1
let g:vimwiki_use_calendar = 1

" Create target wiki page if it does not exist. See |:VimwikiFollowLink|.
" Value           Description~
" 0               Do not create target wiki page.
" 1               Create target wiki page.
" Default: 1
let g:vimwiki_create_link = 1

" Append wiki file extension to links in Markdown. This is needed for
" compatibility with other Markdown tools.
" Value           Description~
" 0               Do not append wiki file extension.
" 1               Append wiki file extension.
" Default: 0
let g:vimwiki_markdown_link_ext = 0

" Enable/disable table auto formatting after leaving INSERT mode.
" Value           Description~
" 0               Disable table auto formatting.
" 1               Enable table auto formatting.
" Default: 1
let g:vimwiki_table_auto_fmt = 1

" If set, the last column separator will not be expanded to fill the cell.  When
" `:set wrap` this option improves how a table is displayed, particularly on
" small screens.  If |g:vimwiki_table_auto_fmt| is set to 0, this option has no
" effect.
" Value           Description~
" 0               Enable table auto formating for all columns.
" 1               Disable table auto formating for the last column.
" Default: 0
let g:vimwiki_table_reduce_last_col = 0

" Convert directory name from current 'encoding' into 'g:vimwiki_w32_dir_enc'
" before it is created.
" If you have 'enc=utf-8' and set up >
"     let g:vimwiki_w32_dir_enc = 'cp1251'
" <
" then following the next link with <CR>: >
"     [[привет/мир]]
" >
" would convert utf-8 'привет' to cp1251 and create directory with that name.
" Default: ''
"let g:vimwiki_w32_dir_enc = ""

" Use a special method to calculate the correct length of the strings with
" double-wide characters (to align table cells properly).
" Value           Description~
" 0               Do not use it.
" 1               Use it.
" Default: 0
" Note: Vim 7.3 has a new function |strdisplaywidth()|, so for users of an up to
" date Vim, this option is obsolete.
"let g:vimwiki_CJK_length = 0

" This option is about what to do with links to directories, like
" [[directory/]], [[papers/]], etc.
" Value           Description~
" ''              Open 'directory/' using the standard netrw plugin.
" 'index'         Open 'directory/index.wiki', create if needed.
" 'main'          Open 'directory/main.wiki', create if needed.
" etc.
" Default: '' (empty string)
let g:vimwiki_dir_link = "index"

" Set this option if you want headers to be auto-numbered in HTML.
" E.g.: >
"     1 Header1
"     1.1 Header2
"     1.2 Header2
"     1.2.1 Header3
"     1.2.2 Header3
"     1.3 Header2
"     2 Header1
"     3 Header1
" etc.
" Value           Description~
" 0               Header numbering is off.
" 1               Header numbering is on. Headers are numbered starting from
"                 header level 1.
" 2               Header numbering is on. Headers are numbered starting from
"                 header level 2.
" etc.
" Example when g:vimwiki_html_header_numbering = 2: >
" "     Header1
"     1 Header2
"     2 Header2
"     2.1 Header3
"     2.1.1 Header4
"     2.1.2 Header4
"     2.2 Header3
"     3 Header2
"     4 Header2
" etc.
" Default: 0
let g:vimwiki_html_header_numbering = 2

" Ending symbol for |g:vimwiki_html_header_numbering|.
" Value           Description~
" '.'             Dot will be added after a header's number.
" ')'             Closing bracket will be added after a header's number.
" etc.
" With
"     let g:vimwiki_html_header_numbering_sym = '.'
" headers would look like: >
"     1. Header1
"     1.1. Header2
"     1.2. Header2
"     1.2.1. Header3
"     1.2.2. Header3
"     1.3. Header2
"     2. Header1
"     3. Header1
" Default: '' (empty)
let g:vimwiki_html_header_numbering_sym = "."

" Case-insensitive comma separated list of HTML tags that can be used in
" Vimwiki.  When converting to HTML, these tags are left as they are, while
" every other tag is escaped.
" Default: 'b,i,s,u,sub,sup,kbd,br,hr'
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,div,span,img,a'

" Comma-separated list of HTML files that have no corresponding wiki files and
" should not be deleted after |:VimwikiAll2HTML|.
" Default: ''
" Example:
" Consider you have 404.html and search.html in your Vimwiki 'path_html'.
" With: >
"     let g:vimwiki_user_htmls = '404.html,search.html'
" they would not be deleted after |:VimwikiAll2HTML|.
let g:vimwiki_user_htmls = ""

" In Vim 7.3 'conceallevel' is local to the current window, thus if you open a
" Vimwiki buffer in a new tab or window, it would be set to the default value.
" Vimwiki sets 'conceallevel' to g:vimwiki_conceallevel every time a Vimwiki
" buffer is entered.
" With default settings, Vimwiki conceals one-character markers, shortens long
" URLs and hides markers and URL for links that have a description.
" Default: 2
let g:vimwiki_conceallevel = 2

" Control the concealment of one-character markers.
" Setting 'conceal_onechar_markers' to 0 will show the markers, overriding
" whatever value is set in |g:vimwiki_conceallevel|
" Default: 1
let g:vimwiki_conceal_onechar_markers = 1

" Conceal preformatted text markers. For example,
" >
"     {{{python
"     def say_hello():
"         print("Hello, world!")
"     }}}
" >
" would appear as simply
" >
"     def say_hello():
"         print("Hello, world!")
" >
" in your wiki file.
" Default: 0
let g:vimwiki_conceal_pre = 0

" Automatically save a modified wiki buffer when switching wiki pages. Has the
" same effect as setting the Vim option 'autowriteall', but it works for wiki
" files only, while the Vim option is global.
" Hint: if you're just annoyed that you have to save files manually to switch
" wiki pages, consider setting the Vim option 'hidden' which makes that modified
" files don't need to be saved.
" Value           Description~
" 0               autowriteall is off
" 1               autowriteall is on
"
" Default: 1
let g:vimwiki_autowriteall = 1

" Setting the value of |g:vimwiki_url_maxsave| to 0 will prevent any link
" shortening: you will see the full URL in all types of links, with no parts
" being concealed. This option does not affect the concealing of wiki elements
" such as bold, italic, wikilinks, etc.
" When positive, the value determines the maximum number of characters that
" are retained at the end after concealing the middle part of a long URL.
" It could be less: in case one of the characters /,#,? is found near the end,
" the URL will be concealed up to the last occurrence of that character.
" Note:
"   * The conceal feature works only with Vim >= 7.3.
"   * When using the default |wrap| option of Vim, the effect of concealed links
"     is not always pleasing, because the visible text on longer lines with
"     a lot of concealed parts may appear to be strangely broken across several
"     lines. This is a limitation of Vim's |conceal| feature.
"   * Many color schemes do not define an unobtrusive color for the Conceal
"     highlight group - this might be quite noticeable on shortened URLs.
" Default: 15
let g:vimwiki_url_maxsave = 15

" It is a |Dictionary| with the numbers of months and corresponding names. Diary
" uses it.
" Redefine it in your .vimrc to get localized months in your diary:
" let g:vimwiki_diary_months = {
"       \ 1: 'Январь', 2: 'Февраль', 3: 'Март',
"       \ 4: 'Апрель', 5: 'Май', 6: 'Июнь',
"       \ 7: 'Июль', 8: 'Август', 9: 'Сентябрь',
"       \ 10: 'Октябрь', 11: 'Ноябрь', 12: 'Декабрь'
"       \ }
" Default:
" let g:vimwiki_diary_months = {
"       \ 1: 'January', 2: 'February', 3: 'March',
"       \ 4: 'April', 5: 'May', 6: 'June',
"       \ 7: 'July', 8: 'August', 9: 'September',
"       \ 10: 'October', 11: 'November', 12: 'December'
"       \ }
let g:vimwiki_diary_months = {
\   1: 'January',
\   2: 'February',
\   3: 'March',
\   4: 'April',
\   5: 'May',
\   6: 'June',
\   7: 'July',
\   8: 'August',
\   9: 'September',
\   10: 'October',
\   11: 'November',
\   12: 'December'
\ }

" A string with the magic header that tells Vimwiki where the Table of Contents
" (see |vimwiki-toc|) is located in a file. You can change it to the
" appropriate word in your mother tongue like this: >
"   let g:vimwiki_toc_header = 'Inhalt'
" The default is 'Contents'.
let g:vimwiki_toc_header = "Table of Contents"

" The header level of the Table of Contents (see |vimwiki-toc|). Valid values
" are from 1 to 6.
" The default is 1.
let g:vimwiki_toc_header_level = 3

" The format of the links in the Table of Contents (see |vimwiki-toc|).
" Value           Description~
" 0               Extended: The link contains the description and URL. URL
"                 references all levels.
" 1               Brief: The link contains only the URL. URL references only
"                 the immediate level.
" Default: 0
let g:vimwiki_toc_link_format = 0

" A string which specifies the prefix for all global mappings (and some local
" ones).  Use it to avoid conflicts with other plugins.  Note that it must be
" defined before the plugin loads.  >
"   let g:vimwiki_map_prefix = '<Leader>e'
" The default is '<Leader>w'.
let g:vimwiki_map_prefix = "<Leader>w"

" When set to 1, enables auto-cd feature. Whenever Vimwiki page is opened,
" Vimwiki performs an |:lcd| to the root Vimwiki folder of the page's wiki.
" Value           Description~
" 0               Do not change directory.
" 1               Change directory to root Vimwiki folder on opening page.
" Default: 0
let g:vimwiki_auto_chdir = 0

" A string with the magic header that tells Vimwiki where the generated links
" are located in a file. You can change it to the appropriate word in your
" mother tongue like this: >
"   let g:vimwiki_links_header = 'Generierte Links'
" The default is 'Generated Links'.
let g:vimwiki_links_header = "Generated Links"

" The header level of generated links. Valid values are from 1 to 6.
" The default is 1.
let g:vimwiki_links_header_level = 1

" A string with the magic header that tells Vimwiki where the generated tags
" are located in a file. You can change it to the appropriate word in your
" mother tongue like this: >
"   let g:vimwiki_tags_header = 'Generierte Stichworte'
" The default is 'Generated Tags'.
let g:vimwiki_tags_header = "Generated Tags"

" The header level of generated tags. Valid values are from 1 to 5.
" The default is 1.
let g:vimwiki_tags_header_level = 1

" The number of newlines to be inserted after a header is generated. Valid
" values are from 0 to 2.
" The default is 1.
let g:vimwiki_markdown_header_style = 1

" Set this option to 1 to automatically generate a level 1 header when creating
" a new wiki page. This option is disabled for the wiki index and the diary
" index. Spaces replaced with |vimwiki-option-links_space_char| are reverted
" back to spaces in the generated header, which will match the filename
" except for the characters that were reverted to spaces.
" For example, with `links_space_char` set to `'_'` creating a link from the text
" `foo bar link` would result in `[[foo_bar_link]]` and the file
" `foo_bar_link.wiki`. The generated header would be `= foo bar link =`
" The default is 0.
let g:vimwiki_auto_header = 0
"
" A dictionary that is used to enable/disable various key mapping groups. To
" disable a specific group set the value for the associated key to 0.
" For example: >
"   let g:vimwiki_key_mappings =
"     \ {
"     \ 'headers': 0,
"     \ 'text_objs': 0,
"     \ }
" To disable ALL Vimwiki key mappings use: >
"     let g:vimwiki_key_mappings = { 'all_maps': 0, }
" The valid key groups and their associated mappings are shown below.
" `all_maps`:
"   Used to disable all Vimwiki key mappings.
" `global`:
"   |vimwiki-global-mappings| that are defined when Vim starts.
" `headers`:
"   Mappings for header navigation and manipulation:
"   |vimwiki_=|, |vimwiki_-|, |vimwiki_[[|, |vimwiki_]]|, |vimwiki_[=|
"   |vimwiki_]=|, |vimwiki_]u| , |vimwiki_[u|
" `text_objs`:
"   |vimwiki-text-objects| mappings.
" `table_format`:
"   Mappings used for table formatting.
"   |vimwiki_gqq|, |vimwiki_gww|, |vimwiki_gq1|, |vimwiki_gw1|
"   |vimwiki_<A-Left>|, |vimwiki_<A-Right>|
" `table_mappings`:
"     Table mappings for insert mode.
"     |vimwiki_<Tab>|, |vimwiki_<S-Tab>|
" `lists`:
"     Mappings for list manipulation.
"     |vimwiki_<C-Space>|, |vimwiki_gl<Space>|, |vimwiki_gL<Space>| |vimwiki_gln|, |vimwiki_glp|
"     |vimwiki_gll|, |vimwiki_gLl|, |vimwiki_glh|, |vimwiki_gLh|, |vimwiki_glr|, |vimwiki_gLr|
"     |vimwiki_glsar|, |vimwiki_gLstar|, |vimwiki_gl#|, |vimwiki_gL#|, |vimwiki_gl-|, |vimwiki_gL-|
"     |vimwiki_gl1|, |vimwiki_gL1|, |vimwiki_gla|, |vimwiki_gLa|, |vimwiki_glA|, |vimwiki_gLA|
"     |vimwiki_gli|, |vimwiki_gLi|, |vimwiki_glI|, |vimwiki_gLI|, |vimwiki_glx|
" `links`:
"     Mappings for link creation and navigation.
"     |vimwiki_<Leader>w<Leader>i|, |vimwiki_<CR>|, |vimwiki_<S-CR>|, |vimwiki_<C-CR>|
"     |vimwiki_<C-S-CR>|, |vimwiki_<D-CR>|, |vimwiki_<Backspace>|, |vimwiki_<Tab>|
"     |vimwiki_<S-Tab>|, |vimwiki_<Leader>wd|, |vimwiki_<Leader>wr|, |vimwiki_<C-Down>|
"     |vimwiki_<C-Up>|, |vimwiki_+|, |vimwiki_<Backspace>|
" `html`:
"     Mappings for HTML generation.
"     |vimwiki_<Leader>wh|, |vimwiki_<Leader>whh|
" `mouse`:
"     Mouse mappings, see |vimwiki_mouse|. This option is disabled by default.
"
" The default is to enable all key mappings except the mouse: >
"   let g:vimwiki_key_mappings =
"     \ {
"     \   'all_maps': 1,
"     \   'global': 1,
"     \   'headers': 1,
"     \   'text_objs': 1,
"     \   'table_format': 1,
"     \   'table_mappings': 1,
"     \   'lists': 1,
"     \   'links': 1,
"     \   'html': 1,
"     \   'mouse': 0,
"     \ }
let g:vimwiki_key_mappings =
\ {
\   'all_maps': 1,
\   'global': 1,
\   'headers': 1,
\   'text_objs': 1,
\   'table_format': 1,
\   'table_mappings': 1,
\   'lists': 1,
\   'links': 1,
\   'html': 1,
\   'mouse': 0,
\ }

" A list of additional fileypes that should be registered to vimwiki files: >
"   let g:vimwiki_filetypes = ['markdown', 'pandoc']
" Would result in the filetype being set to `vimwiki.markdown.pandoc`. This can
" be used to enable third party plugins such as custom folding. WARNING: this
" option can allow other plugins to overwrite vimwiki settings and operation so
" take care when using it. Any plugin that uses a set filetype will be enabled.
" The default is `[ ]`
let g:vimwiki_filetypes= [ 'markdown' ]

" PER WIKI CONFIGURATION
" =============================================================================
" *vimwiki-option-path*
" ------------------------------------------------------------------------------
" Key             Default value~
" path            ~/vimwiki/
"
" Description~
" Wiki files location:
"
" *vimwiki-option-path_html*
" ------------------------------------------------------------------------------
" Key             Default value~
" path_html       ''
"
" Description~
" Location of HTML files converted from wiki files.
" If path_html is an empty string, the location is derived from
" |vimwiki-option-path| by adding '_html'.
"
" *vimwiki-option-name*
" ------------------------------------------------------------------------------
" Key             Default value~
" name            ''
"
" Description~
" A name that can be used to create interwiki links.
" Valid names can contain letters, numbers, spaces, underscores, and dashes.
" If duplicate names are used the interwiki link will jump to the first wiki
" with a matching name in |g:vimwiki_list|.
" The assigned wiki name will also be shown in the menu entries in GVim.
" See the option |g:vimwiki_menu|.
"
" *vimwiki-option-auto_export*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" auto_export     0                 0, 1
"
" Description~
" Set this option to 1 to automatically generate the HTML file when the
" corresponding wiki page is saved.
" This will keep your HTML files up to date.
"
" *vimwiki-option-auto_toc*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" auto_toc        0                 0, 1
"
" Description~
" Set this option to 1 to automatically update the table of contents when the
" current wiki page is saved:
"
" *vimwiki-option-index*
" ------------------------------------------------------------------------------
" Key             Default value~
" index           index
"
" Description~
" Name of wiki index file:
" NOTE: Do not include the extension.
"
" *vimwiki-option-ext*
" ------------------------------------------------------------------------------
" Key             Default value~
" ext             .wiki
"
" Description~
" Extension of wiki files:
"
" *vimwiki-option-syntax*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" syntax          default           default, markdown, or media
"
" Description~
" Wiki syntax.  You can use different markup languages (currently: Vimwiki's
" default, Markdown, and MediaWiki), but only Vimwiki's default markup will be
" converted to HTML at the moment.
"
" *vimwiki-option-links_space_char*
" ------------------------------------------------------------------------------
" Key                 Default value~
" links_space_char    ' '
"
" Description~
" Set the character (or string) used to replace spaces when creating a link. For
" example, setting '_' would transform the string 'my link' into [[my_link]] and
" the created file would be my_link.wiki. The default behavior does not replace
" spaces.
"
" *vimwiki-option-template_path*
" ------------------------------------------------------------------------------
" Key                 Default value~
" template_path       ~/vimwiki/templates/
"
" Description~
" Setup path for HTML templates: >
"   let g:vimwiki_list = [{'path': '~/my_site/',
"           \ 'template_path': '~/public_html/templates/',
"           \ 'template_default': 'def_template',
"           \ 'template_ext': '.html'}]
" There could be a bunch of templates: >
"     def_template.html
"     index.html
"     bio.html
"     person.html
" etc.
" Each template could look like: >
"     <html>
"     <head>
"         <link rel="Stylesheet" type="text/css" href="%root_path%style.css" />
"         <title>%title%</title>
"         <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
"     </head>
"     <body>
"         <div class="content">
"         %content%
"         </div>
"         <p><small>Page created on %date%</small></p>
"     </body>
"     </html>
" where
"   `%title%` is replaced by a wiki page name or by a |vimwiki-title|
"   `%date%` is replaced with the current date or by |vimwiki-date|
"   `%root_path%` is replaced by a count of ../ for pages buried in subdirs:
"     if you have wikilink [[dir1/dir2/dir3/my page in a subdir]] then
"     `%root_path%` is replaced by '../../../'.
"   `%wiki_path%` Path to current wiki-file.` The file path to the current wiki
"     file. For example, if you are on page a/b.wiki %wiki-path% contains
"     "a/b.wiki". Mostly useful if you want to link the to raw wiki page from
"     the rendered version.
"
"   `%content%` is replaced by a wiki file content.
" The default template will be applied to all wiki pages unless a page specifies
" a template. Consider you have wiki page named 'Maxim.wiki' and you want apply
" 'person.html' template to it. Just add: >
"  %template person
" to that page.
"
" *vimwiki-option-template_default*
" ------------------------------------------------------------------------------
" Key                 Default value~
" template_default    default
"
" Description~
" Setup default template name (without extension).
"
" *vimwiki-option-template_ext*
" ------------------------------------------------------------------------------
" Key                 Default value~
" template_ext        .tpl
"
" Description~
" Setup template filename extension.
"
" *vimwiki-option-css_name*
" ------------------------------------------------------------------------------
" Key             Default value~
" css_name        style.css
"
" Description~
" Setup CSS file name: >
"   let g:vimwiki_list = [{'path': '~/my_pages/',
"           \ 'css_name': 'main.css'}]
" <
" or even >
"   let g:vimwiki_list = [{'path': '~/my_pages/',
"           \ 'css_name': 'css/main.css'}]
" <
" Vimwiki comes with a default CSS file "style.css".
"
" *vimwiki-option-maxhi*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" maxhi           0                 0, 1
"
" Description~
" If on, wiki links to non-existent wiki files are highlighted.  However, it can
" be quite slow.
"
" *vimwiki-option-nested_syntaxes*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" nested_syntaxes {}                pairs of highlight keyword and Vim filetype
"
" Description~
" You can configure preformatted text to be highlighted with any syntax
" available for Vim.
" For example the following setup in your vimrc: >
"   let wiki = {}
"   let wiki.path = '~/my_wiki/'
"   let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"   let g:vimwiki_list = [wiki]
" would give you Python and C++ highlighting in: >
"  {{{class="brush: python"
"  for i in range(1, 5):
"      print(i)
"  }}}
"
"  {{{class="brush: c++"
"  #include "helloworld.h"
"  int helloworld()
"  {
"     printf("hello world");
"  }
"  }}}
" or in: >
"  {{{c++
"  #include "helloworld.h"
"  int helloworld()
"  {
"     printf("hello world");
"  }
"  }}}
"  {{{python
"  for i in range(1, 5):
"      print(i)
"  }}}
"
" *vimwiki-option-automatic_nested_syntaxes*
" ------------------------------------------------------------------------------
" Key                        Default value~
" automatic_nested_syntaxes  1
"
" Description~
" If set, the nested syntaxes (|vimwiki-option-nested_syntaxes|) are
" automatically derived when opening a buffer.
" Just write your preformatted text in your file like this >
"  {{{xxx
"  my preformatted text
"  }}}
" where xxx is a filetype which is known to Vim. For example, for C++
" highlighting, use "cpp" (not "c++"). For a list of known filetypes, type
" ":setf " and hit Ctrl+d.
" Note that you may have to reload the file (|:edit|) to see the highlight.
" Since every file is scanned for the markers of preformatted text when it is
" opened, it can be slow when you have huge files. In this case, set this option
" to 0.
"
" *vimwiki-option-diary_rel_path*
" ------------------------------------------------------------------------------
" Key             Default value~
" diary_rel_path  diary/
"
" Description~
" The path to the diary wiki files, relative to |vimwiki-option-path|.
"
" *vimwiki-option-diary_index*
" ------------------------------------------------------------------------------
" Key             Default value~
" diary_index     diary
"
" Description~
" Name of wiki-file that holds all links to dated wiki files.
"
" *vimwiki-option-diary_header*
" ------------------------------------------------------------------------------
" Key             Default value~
" diary_header    Diary
"
" Description~
" Name of the header in |vimwiki-option-diary_index| where links to dated
" wiki-files are located.
"
" *vimwiki-option-diary_sort*
" ------------------------------------------------------------------------------
" Key             Default value   Values~
" diary_sort      desc            desc, asc
"
" Description~
" Sort links in a diary index page.
"
" *vimwiki-option-diary_caption_level*
" ------------------------------------------------------------------------------
" Key                   Default value~
" diary_caption_level   0
"
" Description~
" Controls the presence of captions in the diary index linking to headers within
" the diary pages.
" Possible values:
" -1:  No headers are read from the diary page.
"  0:  The first header from the diary page is used as the caption.
"        There are no sub-captions.
"  1:  Captions are created for headers of level 1 in the diary page.
"  2:  Captions are created for headers up to level 2 in the diary page.
"  etc.
" When the value is >= 1, the primary caption of each diary page is set to the
" first header read from that page if it is the unique lowest-level header.
"
" *vimwiki-option-custom_wiki2html*
" ------------------------------------------------------------------------------
" Key               Default value~
" custom_wiki2html  ''
"
" Description~
" The full path to a user-provided script that converts a wiki page to HTML.
" Vimwiki calls the provided |vimwiki-option-custom_wiki2html| script from the
" command-line, using |:!| invocation.
" The following arguments, in this order, are passed to the script:
" 1. force : [0/1] overwrite an existing file
" 2. syntax : the syntax chosen for this wiki
" 3. extension : the file extension for this wiki
" 4. output_dir : the full path of the output directory
" 5. input_file : the full path of the wiki page
" 6. css_file : the full path of the css file for this wiki
" 7. template_path : the full path to the wiki's templates
" 8. template_default : the default template name
" 9. template_ext : the extension of template files
" 10. root_path : a count of ../ for pages buried in subdirs
"     For example, if you have wikilink [[dir1/dir2/dir3/my page in a subdir]]
"     then this argument is '../../../'.
" 11. custom_args : custom arguments that will be passed to the conversion
"     (can be defined in g:vimwiki_list as 'custom_wiki2html_args' parameter,
"     see |vimwiki-option-custom_wiki2html_args|)
"     script.
" Options 7-11 are experimental and may change in the future.  If any of these
" parameters is empty, a hyphen "-" is passed to the script in its place.
" For an example and further instructions, refer to the following script:
"   $VIMHOME/autoload/vimwiki/customwiki2html.sh
" An alternative converter was developed by Jason6Anderson, and can
" be located at https://github.com/vimwiki-backup/vimwiki/issues/384
" To use the internal wiki2html converter, use an empty string (the default).
"
" *vimwiki-option-custom_wiki2html_args*
" -----------------------------------------------------------------------------
" Key                     Default value~
" custom_wiki2html_args   ''
"
" Description~
" If a custom script is called with |vimwiki-option-custom_wiki2html|, additional
" parameters can be passed using this option: >
"   let g:vimwiki_list = [{'path': '~/path/', 'custom_wiki2html_args': 'stuff'}]
"
" *vimwiki-option-list_margin*
" ------------------------------------------------------------------------------
" Key               Default value~
" list_margin       -1 (0 for markdown)
"
" Description~
" Width of left-hand margin for lists.  When negative, the current 'shiftwidth'
" is used.  This affects the appearance of the generated links (see
" |:VimwikiGenerateLinks|), the Table of contents (|vimwiki-toc|) and the
" behavior of the list manipulation commands |:VimwikiListChangeLevel| and the
" local mappings |vimwiki_glstar|, |vimwiki_gl#| |vimwiki_gl-|, |vimwiki_gl-|,
" |vimwiki_gl1|, |vimwiki_gla|, |vimwiki_glA|, |vimwiki_gli|, |vimwiki_glI| and
" |vimwiki_i_<C-L>_<C-M>|.
" Note: if you use Markdown or MediaWiki syntax, you probably would like to set
" this option to 0, because every indented line is considered verbatim text.
"
" *vimwiki-option-auto_tags*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" auto_tags       0                 0, 1
"
" Description~
" Set this option to 1 to automatically update the tags metadata when the
" current wiki page is saved: >
"   let g:vimwiki_list = [{'path': '~/my_site/', 'auto_tags': 1}]
"
" *vimwiki-option-auto_diary_index*
" ------------------------------------------------------------------------------
" Key               Default value     Values~
" auto_diary_index  0                 0, 1
"
" Description~
" Set this option to 1 to automatically update the diary index when opened.
" See |:VimwikiDiaryGenerateLinks|:  >
"   let g:vimwiki_list = [{'path': '~/my_site/', 'auto_diary_index': 1}]
"
" *vimwiki-option-auto_generate_links*
" ------------------------------------------------------------------------------
" Key                  Default value     Values~
" auto_generate_links  0                 0, 1
"
" Description~
" Set this option to 1 to automatically update generated links when the
" current wiki page is saved: >
"   let g:vimwiki_list = [{'path': '~/my_site/', 'auto_generate_links': 1}]
"
" *vimwiki-option-auto_generate_tags*
" ------------------------------------------------------------------------------
" Key                 Default value     Values~
" auto_generate_tags  0                 0, 1
"
" Description~
" Set this option to 1 to automatically update generated tags when the
" current wiki page is saved: >
"   let g:vimwiki_list = [{'path': '~/my_site/', 'auto_generate_tags': 1}]
"
" *vimwiki-option-exclude_files*
" ------------------------------------------------------------------------------
" Key             Default value     Values~
" exclude_files   []                list of file patterns to exclude
"
" Description~
" Set this option to a list of file patterns to exclude when checking or
" generating links: >
"   let g:vimwiki_list = [{'path': '~/my_site/', 'exclude_files': ['**/README.md']}]
"
" *vimwiki-option-html_filename_parameterization*
" ------------------------------------------------------------------------------
" Key                             Default value     Values~
" html_filename_parameterization  0                 0, 1
"
" Description~
" This setting is for integration with the vimwiki_markdown gem. If this is set
" to 1 it alters the check for generated html filenames to match what
" vimwiki_markdown generates. This means that it prevents unnecessary
" regeneration of HTML files.
" This setting also turns off the automatic deletion of files
" in the site_html directory which don't match existing wiki files.
"

let g:vimwiki_list = [
\ {
\   'path': '~/perso',
\   'path_html': '~/.local/share/www/wikis/perso/docs_html',
\   'name': 'Personnal main Wiki with diary',
\   'auto_export': 0,
\   'auto_toc': 1,
\   'index': 'index',
\   'ext': '.md',
\   'syntax': 'markdown',
\   'links_space_char': '_',
\   'maxhi': 1,
\   'automatic_nested_syntaxes': 1,
\   'diary_rel_path': 'journal',
\   'diary_index': 'index',
\   'diary_header': 'Diary',
\   'diary_sort': 'desc',
\   'diary_caption_level': 1,
\   'custom_wiki2html': '',
\   'custom_wiki2html_args': '',
\   'list_margin': 0,
\   'auto_tags': 1,
\   'auto_diary_index': 0,
\   'auto_generate_links': 1,
\   'auto_generate_tags': 1,
\   'exclude_files': [],
\   'html_filename_parameterization': 0,
\ },
\ {
\   'path': '~/git',
\   'path_html': '~/.local/share/www/wikis/git/docs_html',
\   'name': 'Personnal git Wiki to track issues and tasks.',
\   'auto_export': 0,
\   'auto_toc': 1,
\   'index': 'index',
\   'ext': '.md',
\   'syntax': 'markdown',
\   'links_space_char': '_',
\   'maxhi': 1,
\   'automatic_nested_syntaxes': 1,
\   'diary_rel_path': '${HOME}/perso/journal/',
\   'diary_index': 'index',
\   'diary_header': 'Diary',
\   'diary_sort': 'desc',
\   'diary_caption_level': 1,
\   'custom_wiki2html': '',
\   'custom_wiki2html_args': '',
\   'list_margin': 0,
\   'auto_tags': 1,
\   'auto_diary_index': 0,
\   'auto_generate_links': 1,
\   'auto_generate_tags': 1,
\   'exclude_files': [],
\   'html_filename_parameterization': 0,
\ },
\ ]
