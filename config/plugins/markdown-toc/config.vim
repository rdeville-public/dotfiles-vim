" This plugin will update existing table of contents on save automatic.
" You can close this feature by add the following line to your vimrc file:
let g:vmt_auto_update_on_save = 0

" By default, the :GenTocXXX commands will add <!-- vim-markdown-toc --> fence
" to the table of contents, it is designed for feature of auto update table of
" contents on save and :UpdateToc command, it won't effect what your Markdown
" file looks like after parse.

" But then you will lose the convenience of auto update tables of contents on
" save and :UpdateToc command. When you want to update toc, you need to remove
" existing toc manually and rerun :GenTocXXX commands.

" If you don't like this, you can remove the fence by add the following line
" to your vimrc file:
let g:vmt_dont_insert_fence = 1


" Inner text of the fence marker for the table of contents, see
" g:vmt_dont_insert_fence.

let g:vmt_fence_closing_text = "TOC"


" By default, vim-markdown-toc will add the markdown style into the fence of
" the text for the table of contents. You can avoid this and set a default
" markdown style with g:vmt_fence_hidden_markdown_style that is applied if a
" fence is found containing the g:vmt_fence_text without any markdown style.
" Obviously, g:vmt_fence_hidden_markdown_style has to be supported, i.e.
" currently one of ['GFM', 'Redcarpet', 'GitLab', 'Marked'].
let g:vmt_fence_hidden_markdown_style = 'Gitlab'

" By default, * is used to denote every level of a list:
" ```markdown
"   * [Level 1](#level-1)
"       * [Level 1-1](#level-1-1)
"       * [Level 1-2](#level-1-2)
"           * [Level 1-2-1](#level-1-2-1)
"   * [Level 2](level-2)
" ``````

" If you set:
" ```vim
" let g:vmt_cycle_list_item_markers = 1
" ```

" Every level will instead cycle between the valid list item markers *, - and
" "+:
" ```markdown
" * [Level 1](#level-1)
"     - [Level 1-1](#level-1-1)
"     - [Level 1-2](#level-1-2)
"         + [Level 1-2-1](#level-1-2-1)
" * [Level 2](level-2)
" ```

" This renders the same according to Markdown rules, but might appeal to those
" who care about readability of the source.
let g:vmt_cycle_list_item_markers = 0

" The list item marker, it can be *, - or +.
let g:vmt_list_item_char = "*"

" Include headings before the position you are inserting Table of Contents.
let g:vmt_include_headings_before = 0
