" !!! # !!! ------------------------------------------------------------------------------
" !!! # !!!
" !!! # !!! HIGHLIGHTS            *coc-highlights*
" !!! # !!!
" !!! # !!! To customize a highlight, simply use |:highlight| command of Vim in your
" !!! # !!! vimrc, like: >
" !!! # !!!
" !!! # !!! # " make error texts have a red color
" !!! # !!! # highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
" !!! # !!! <
" !!! # !!! Note: don't use `:hi default` for overwriting the highlights.
" !!! # !!!
" !!! # !!! Note: highlight commands should appear after the |:colorscheme| command or use
" !!! # !!! |ColorScheme| autocmd to make sure customized highlight works after color
" !!! # !!! scheme change.
" !!! # !!!
" !!! # !!! CocUnderline            *CocUnderline*
" !!! # !!!
" !!! # !!!   Default: `hi default CocUnderline cterm=underline gui=underline`
" !!! # !!!
" !!! # !!!   Used for underlined text.
" !!! # !!!
" !!! # !!! CocFadeOut            *CocFadeOut*
" !!! # !!!
" !!! # !!!   Default: `hi default CocFadeOut       guifg=#928374 ctermfg=245`
" !!! # !!!
" !!! # !!!   Used for faded out text, such as for highlighting unnecessary code.
" !!! # !!!
" !!! # !!! CocStrikeThrough           *CocStrikeThrough*
" !!! # !!!
" !!! # !!!   Default: `hi default CocStrikeThrough guifg=#989898 ctermfg=gray`
" !!! # !!! #     `\ cterm=strikethrough gui=strikethrough`
" !!! # !!!
" !!! # !!!   Used for strikethrough text, like usage of deprecated API.
" !!! # !!!   Default color is used since strikethrough may not work.
" !!! # !!!
" !!! # !!! CocBold              *CocBold*
" !!! # !!!
" !!! # !!!   Default: `hi default CocBold term=bold cterm=bold gui=bold`
" !!! # !!!
" !!! # !!!   Used for bold text.
" !!! # !!!
" !!! # !!! CocItalic            *CocItalic*
" !!! # !!!
" !!! # !!!   Default: `hi default CocItalic term=italic cterm=italic gui=italic`
" !!! # !!!
" !!! # !!!   Used for italic text.
" !!! # !!!
" !!! # !!! CocMarkdownCode            *CocMarkdownCode*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocMarkdownCode     markdownCode`
" !!! # !!!
" !!! # !!!   Used for markdown code in floating window/popup.
" !!! # !!!
" !!! # !!! CocMarkdownHeader          *CocMarkdownHeader*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocMarkdownHeader   markdownH1`
" !!! # !!!
" !!! # !!!   Used for markdown header in floating window/popup.
" !!! # !!!
" !!! # !!! CocMarkdownLink            *CocMarkdownLink*
" !!! # !!!
" !!! # !!!   Default: `hi default CocMarkdownLink ctermfg=Blue guifg=#15aabf guibg=NONE`
" !!! # !!!
" !!! # !!!   Used for markdown link text in floating window/popup.
" !!! # !!!
" !!! # !!! CocErrorSign            *CocErrorSign*
" !!! # !!!
" !!! # !!!   Default: `hi CocErrorSign  ctermfg=Red guifg=#ff0000`
" !!! # !!!
" !!! # !!!   Used for error signs.
" !!! # !!!
" !!! # !!! CocWarningSign            *CocWarningSign*
" !!! # !!!
" !!! # !!!   Default: `hi CocWarningSign  ctermfg=Brown guifg=#ff922b`
" !!! # !!!
" !!! # !!!   Used for warning signs.
" !!! # !!!
" !!! # !!! CocInfoSign            *CocInfoSign*
" !!! # !!!
" !!! # !!!   Default: `hi CocInfoSign  ctermfg=Yellow guifg=#fab005`
" !!! # !!!
" !!! # !!!   Used for information signs.
" !!! # !!!
" !!! # !!! CocHintSign            *CocHintSign*
" !!! # !!!
" !!! # !!!   Default: `hi CocHintSign  ctermfg=Blue guifg=#15aabf`
" !!! # !!!
" !!! # !!!   Used for hint signs.
" !!! # !!!
" !!! # !!! CocErrorVirtualText          *CocErrorVirtualText*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocErrorVirtualText  CocErrorSign`
" !!! # !!!
" !!! # !!!   Used for error signs.
" !!! # !!!
" !!! # !!! CocWarningVirtualText          *CocWarningVirtualText*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocWarningVirtualText CocWarningSign`
" !!! # !!!
" !!! # !!!   Used for warning signs.
" !!! # !!!
" !!! # !!! CocInfoVirtualText          *CocInfoVirtualText*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocInfoVirtualText CocInfoSign`
" !!! # !!!
" !!! # !!!   Used for information signs.
" !!! # !!!
" !!! # !!! CocHintVirtualText          *CocHintVirtualText*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocHintVirtualText CocHintSign`
" !!! # !!!
" !!! # !!!   Used for hint signs.
" !!! # !!!
" !!! # !!! CocErrorHighlight          *CocErrorHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocErrorHighlight   CocUnderline`
" !!! # !!!
" !!! # !!!   Used for error text.
" !!! # !!!
" !!! # !!! CocWarningHighlight          *CocWarningHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocWarningHighlight   CocUnderline`
" !!! # !!!
" !!! # !!!   Used for warning text.
" !!! # !!!
" !!! # !!! CocInfoHighlight          *CocInfoHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocInfoHighlight   CocUnderline`
" !!! # !!!
" !!! # !!!   Used for information text.
" !!! # !!!
" !!! # !!! CocHintHighlight          *CocHintHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocHintHighlight   CocUnderline`
" !!! # !!!
" !!! # !!!   Used for hint text.
" !!! # !!!
" !!! # !!! CocDeprecatedHighlight          *CocDeprecatedHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocDeprecatedHighlight   CocStrikeThrough`
" !!! # !!!
" !!! # !!!   Used for usages of deprecated API.
" !!! # !!!
" !!! # !!! CocUnusedHighlight          *CocUnusedHighlight*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocUnusedHighlight   CocFadeOut`
" !!! # !!!
" !!! # !!!   Used for unnecessary code.
" !!! # !!!
" !!! # !!! CocHighlightText          *CocHighlightText*
" !!! # !!!
" !!! # !!!   Default `hi default link CursorColumn`
" !!! # !!!
" !!! # !!!   Used for document highlight feature. Normally used for
" !!! # !!!   highlighting same symbols in the buffer at the current cursor position.
" !!! # !!!
" !!! # !!! CocHighlightRead          *CocHighlightRead*
" !!! # !!!
" !!! # !!!   Default `hi default link CocHighlightRead  CocHighlightText`
" !!! # !!!
" !!! # !!!   Highlight for `Read` kind of document symbol.
" !!! # !!!
" !!! # !!! CocHighlightWrite          *CocHighlightWrite*
" !!! # !!!
" !!! # !!!   Default `hi default link CocHighlightWrite  CocHighlightText`
" !!! # !!!
" !!! # !!!   Highlight for `Write` kind of document symbol.
" !!! # !!!
" !!! # !!! CocErrorLine            *CocErrorLine*
" !!! # !!!
" !!! # !!!   Default `undefined`
" !!! # !!!
" !!! # !!!   Line highlight of sign for a line that contains error diagnostic.
" !!! # !!!
" !!! # !!! CocWarningLine            *CocWarningLine*
" !!! # !!!
" !!! # !!!   Default `undefined`
" !!! # !!!
" !!! # !!!   Line highlight of sign for a line that contains warning diagnostic.
" !!! # !!!
" !!! # !!! CocInfoLine            *CocInfoLine*
" !!! # !!!
" !!! # !!!   Default `undefined`
" !!! # !!!
" !!! # !!!   Line highlight of sign for a line that contains info diagnostic.
" !!! # !!!
" !!! # !!! CocHintLine            *CocHintLine*
" !!! # !!!
" !!! # !!!   Default `undefined`
" !!! # !!!
" !!! # !!!   Highlight for a line with diagnostic hint.
" !!! # !!!
" !!! # !!! CocCodeLens            *CocCodeLens*
" !!! # !!!
" !!! # !!!   Default: `ctermfg=Gray    guifg=#999999`
" !!! # !!!
" !!! # !!!   Highlight group of virtual text for codeLens.
" !!! # !!!
" !!! # !!! CocFloating            *CocFloating*
" !!! # !!!
" !!! # !!!   Default: `NormalFloat` on neovim, `Pmenu` on vim.
" !!! # !!!
" !!! # !!!   Normal highlight group of floating windows/popups.
" !!! # !!!
" !!! # !!! CocErrorFloat            *CocErrorFloat*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocErrorFloat CocErrorSign`
" !!! # !!!
" !!! # !!!   Used for floating windows/popups with errors.
" !!! # !!!
" !!! # !!! CocWarningFloat            *CocWarningFloat*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocWarningFloat CocWarningSign`
" !!! # !!!
" !!! # !!!   Used for warnings in floating windows/popups.
" !!! # !!!
" !!! # !!! CocInfoFloat            *CocInfoFloat*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocInfoFloat CocInfoSign`
" !!! # !!!
" !!! # !!!   Used for infos in floating windows/popups.
" !!! # !!!
" !!! # !!! CocHintFloat            *CocHintFloat*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocHintFloat CocHintSign`
" !!! # !!!
" !!! # !!!   Used for hints in floating windows/popups.
" !!! # !!!
" !!! # !!! CocCursorRange            *CocCursorRange*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocCursorRange Search`
" !!! # !!!
" !!! # !!!   Used for cursor ranges.
" !!! # !!!
" !!! # !!! CocHoverRange            *CocHoverRange*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocHoverRange Search`
" !!! # !!!
" !!! # !!!   Used for current hover range.
" !!! # !!!
" !!! # !!! CocMenuSel            *CocMenuSel*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocMenuSel PmenuSel`
" !!! # !!!
" !!! # !!!   Used for current menu item in menu dialog,
" !!! # !!!   works on neovim only since vim doesn't support change highlight
" !!! # !!!   group of cursorline inside popup.
" !!! # !!!
" !!! # !!! CocListMode            *CocListMode*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocListMode ModeMsg`
" !!! # !!!
" !!! # !!!   Used for mode in statusline of CocList.
" !!! # !!!
" !!! # !!! CocListPath            *CocListPath*
" !!! # !!!
" !!! # !!!   Default: `hi default link CocListPath Comment`
" !!! # !!!
" !!! # !!!   Used for current cwd in statusline of CocList.
" !!! # !!!
" !!! # !!! CocSem_*            *CocSem*
" !!! # !!!
" !!! # !!!   Used for words whose semantics are provided by the language server, which
" !!! # !!!   typically analyzes source code more deeply than vim's builtin syntax parser.
" !!! # !!!
" !!! # !!!   Basic defaults are provided for the "standard" token kinds, but any kind
" !!! # !!!   supported by the server can be highlighted by creating the highlight group.
" !!! # !!!
" !!! # !!!   Default (enabled by setting `g:coc_default_semantic_highlight_groups = 1`):
" !!! # !!!   `hi default link CocSem_namespace Identifier`
" !!! # !!!   `hi default link CocSem_type Type`
" !!! # !!!   `hi default link CocSem_class Structure`
" !!! # !!!   `hi default link CocSem_enum Type`
" !!! # !!!   `hi default link CocSem_interface Type`
" !!! # !!!   `hi default link CocSem_struct Structure`
" !!! # !!!   `hi default link CocSem_typeParameter Type`
" !!! # !!!   `hi default link CocSem_parameter Identifier`
" !!! # !!!   `hi default link CocSem_variable Identifier`
" !!! # !!!   `hi default link CocSem_property Identifier`
" !!! # !!!   `hi default link CocSem_enumMember Constant`
" !!! # !!!   `hi default link CocSem_event Identifier`
" !!! # !!!   `hi default link CocSem_function Function`
" !!! # !!!   `hi default link CocSem_method Function`
" !!! # !!!   `hi default link CocSem_macro Macro`
" !!! # !!!   `hi default link CocSem_keyword Keyword`
" !!! # !!!   `hi default link CocSem_modifier StorageClass`
" !!! # !!!   `hi default link CocSem_comment Comment`
" !!! # !!!   `hi default link CocSem_string String`
" !!! # !!!   `hi default link CocSem_number Number`
" !!! # !!!   `hi default link CocSem_regexp Normal`
" !!! # !!!   `hi default link CocSem_operator Operator`
" !!! # !!!

" Load custom syntax per coc extension
for f in split(glob(new_rtp . '/plugins/coc/extensions/*/highlight.vim'), '\n')
"for f in split(glob(new_rtp . '/plugins/coc/extenions/*/*.vim'), '\n')
  exe 'source' f
endfor

