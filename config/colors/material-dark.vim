" Vim color file

" If you're using a symlink to your script, but your resources are in
" the same directory as the actual script, you'll need to do this:
"   1: Get the absolute path of the script
"   2: Resolve all symbolic links
"   3: Get the folder of the resolved absolute file
let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! HL(group, attr, fg, bg, ...)
  " Function to HighLight (HL) colors based on group, foreground, background,
  " attributes and special for gui.
  let l:guisp = get(a:, 2, "")

  if len(a:fg) > 0
    exec "hi! " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
  endif
  if len(a:bg) > 0
    exec "hi! " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi! " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi! " . a:group . " gui=none cterm=none"
  endif
  if len(l:guisp) > 0
    exec "hi! " . a:group . " guisp=" . l:guisp[0]
  endif
endfunction

function! LK(groupdest, groupsrc, ...)
  " Function to LinK (LK) a group to another already defined group
  exec "hi! default link " . a:groupdest . " " . a:groupsrc
endfunction

" Load every colors defined in folder definition/all_colors.vim next to this
" script
exe 'source ' . s:script_path . '/definition/all_colors.vim'

" # Theme Setup
  " Reset syntax
syntax reset
  " Define name of the colorscheme
let g:colors_name = "material-dark"

" ## General Vim
" ### Base Interface
  call HL("Italic"                   , "italic"                 , ""                 , "")                " Italic text
  call HL("Underlined"               , "underline"              , ""                 , "")                " Underline text
  call HL("Bold"                     , "bold"                   , ""                 , "")                " Bold text
  call HL("Normal"                   , ""                       , g:grey_100         , g:grey_900)        " Normal text
  call HL("NormalFloat"              , ""                       , g:grey_100         , g:grey_800)        " Normal text in floating windows.
  call HL("NormalNC"                 , ""                       , ""                 , "")                " Normal text in non-current windows
  call LK("MsgArea"                  , "Normal"                 , ""                 , "")                " Area for messages and cmdline
  call HL("Visual"                   , ""                       , ""                 , g:lime_900) " Visual mode selection
  call LK("VisualNOS"                , "Visual"                 , ""                 , "")                " Visual mode selection when vim is 'Not Owning the Selection'.
  call HL("NonText"                  , ""                       , g:grey_500         , "")                " '@' at the end of the window characters from 'showbreak' Popup menu: selected item.
  call HL("Debug"                    , ""                       , g:white            , g:light_green_900) " Debug statement
  call HL("WarningMsg"               , ""                       , g:white            , g:orange_A200)     " Warning messages
  call HL("Error"                    , ""                       , g:white            , g:red_A200)        " Error Statement
  call HL("ErrorMsg"                 , ""                       , g:white            , g:red_A200)        " Error messages on the command line
  call HL("ModeMsg"                  , ""                       , g:light_green_500  , "")                " 'showmode' message;e.g. '-- INSERT --'
  call HL("MoreMsg"                  , ""                       , g:light_green_500  , "")                " |more-prompt|
  call HL("LineNr"                   , ""                       , g:grey_400         , g:grey_700)        " Line number for ':number' and ':#' commands and when 'number'
  call HL("CursorLine"               , ""                       , ""                 , g:grey_800)        " Screen-line at the cursor when 'cursorline' is set.
  call LK("CursorColumn"             , "CursorLine"             , ""                 , "")                " Screen-column at the cursor when 'cursorcolumn' is set.
  call LK("CursorLineNr"             , "CursorLine"             , ""                 , "")                " Like LineNr when 'cursorline' or 'relativenumber' is set for
  call LK("FoldColumn"               , "LineNr"                 , ""                 , "")                " Fold Column left to the line nr
  call HL("Pmenu"                    , ""                       , g:grey_200         , g:grey_800)        " Popup menu: normal item.
  call HL("PmenuSel"                 , ""                       , g:grey_800         , g:green_500)       " Popup menu: selected item.
  call HL("PmenuSbar"                , ""                       , ""                 , g:grey_500)        " Popup menu: scrollbar.
  call HL("PmenuThumb"               , ""                       , ""                 , g:green_900)       " Popup menu: Thumb of the scrollbar.
  call LK("Menu"                     , "Pmenu"                  , ""                 , "")                " Current font background and foreground colors of the menus.
  call LK("WildMenu"                 , "PmenuSel"               , ""                 , "")                " Current match in 'wildmenu' completion
  call HL("StatusLine"               , ""                       , ""                 , g:grey_700)        " status line of current window
  call HL("StatusLineNC"             , ""                       , ""                 , "")                " status lines of not-current windows
  call HL("TabLine"                  , ""                       , ""                 , "")                " Tab pages line not active tab page label
  call HL("TabLineFill"              , ""                       , ""                 , "")                " Tab pages line where there are no labels
  call HL("TabLineSel"               , ""                       , g:yellow_900       , "")                " Tab pages line; active tab page label
  call HL("VertSplit"                , ""                       , g:grey_700         , g:grey_700)        " The column separating vertically split windows
  call HL("ColorColumn"              , ""                       , ""                 , g:blue_grey_900)   " Used for the columns set with 'colorcolumn'
  call HL("Folded"                   , "italic"                 , g:grey_400         , g:grey_800 )       " Line used for closed folds
  call HL("Search"                   , ""                       , ""                 , g:yellow_100)      " Last search pattern highlighting ;see 'hlsearch' .
  call LK("IncSearch"                , "Search"                 , ""                 , "")                " 'incsearch' highlighting; also used for the text replaced with
  call HL("Substitute"               , ""                       , g:grey_800         , g:yellow_200)      " |:substitute| replacement text highlighting
  call HL("MatchParen"               , ""                       , ""                 , g:black)           " The character under the cursor or just before it; if it
  call HL("SpecialKey"               , ""                       , g:red_500          , "")                " Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
  call HL("Whitespace"               , ""                       , ""                 , "")                " 'nbsp'; 'space'; 'tab' and 'trail' in 'listchars'
  call HL("SignColumn"               , ""                       , g:grey_400         , g:grey_800)        " Column where |signs| are displayed
  call HL("EndOfBuffer"              , ""                       , g:grey_900         , g:grey_900)        " Filler lines `~` after the end of the buffer. cursor in an unfocused terminal
  call HL("Title"                    , "bold"                   , g:cyan_A200        , "")                " Title ;for markdown for instance
  call HL("Directory"                , ""                       , g:teal_A400        , "")                " Directory names and other special names in listings)

" ### Diff Mode
  call HL("DiffAdd"                  , ""                       , g:green_A200       , g:blue_grey_900)   " Diff mode: Added line |diff.txt|
  call HL("DiffChange"               , ""                       , ""                 , g:brown_900)       " Diff mode: Changed line |diff.txt|
  call HL("DiffDelete"               , ""                       , g:red_500          , g:blue_grey_900)   " Diff mode: Deleted line |diff.txt|
  call HL("DiffText"                 , "italic"                 , ""                 , g:blue_grey_700  ) " Diff mode: Changed text within a changed line |diff.txt|

" ### Spelling
  call HL("SpellBad"                 , "undercurl"              , g:yellow_500       , "")                " Word that is not recognized by the spellchecker.
  call HL("SpellCap"                 , "undercurl"              , ""                 , "")                " Word that should start with a capital.
  call HL("SpellLocal"               , "undercurl"              , ""                 , "")                " Word that is recognized by the spellchecker as one that is used in another region.
  call HL("SpellRare"                , "undercurl"              , ""                 , "")                " Word that is recognized by the spellchecker as one that is hardly ever used.

" ### Standard syntax highlighting
  call HL("Comment"                  , ""                       , g:grey_400         , "")                " Any Comment

" ### Value
  call HL("Constant"                 , ""                       , g:orange_A200      , "")                " Any constant
  call HL("String"                   , ""                       , g:red_A200         , "")                " A string constant: 'this is a string'
  call HL("Character"                , ""                       , g:red_A400         , "")                " A character constant: 'c'; '\n'
  call HL("Number"                   , ""                       , g:amber_A200       , "")                " A number constant: 234; 0xff
  call HL("Boolean"                  , ""                       , g:orange_A200      , "")                " A boolean constant: TRUE; false
  call LK("Float"                    , "Number"                 , ""                 , "")                " A floating point constant: 2.3e10

" ### Definition
  call HL("Identifier"               , ""                       , g:purple_A100      , "")                " Any variable name
  call HL("Function"                 , ""                       , g:deep_purple_A100 , "")                " Function name also: methods for classes)

" ### Keywords
  call HL("Statement"                , ""                       , g:cyan_A100        , "")                " Any statement
  call HL("Conditional"              , ""                       , g:blue_A100        , "")                " If; then; else; endif; switch; etc.
  call LK("Repeat"                   , "Statement"              , ""                 , "")                " For; do; while; etc.
  call LK("Label"                    , "Conditional"            , ""                 , "")                " Case; default; etc.
  call LK("Operator"                 , "Statement"              , ""                 , "")                " "sizeof"; "+"; "*"; etc.
  call HL("Keyword"                  , ""                       , g:light_blue_A100  , "")                " Any other keyword
  call LK("Exception"                , "Statement"              , ""                 , "")                " Try; catch; throw

" ### Macro & Preprocessor
  call HL("PreProc"                  , ""                       , g:yellow_A400      , "")                " Generic Preprocessor
  call LK("Include"                  , "PreProc"                , ""                 , "")                " Preprocessor #include
  call LK("Define"                   , "PreProc"                , ""                 , "")                " Preprocessor #define
  call LK("Macro"                    , "PreProc"                , ""                 , "")                " Same as Define
  call LK("PreCondit"                , "PreProc"                , ""                 , "")                " Preprocessor #if; #else; #endif; etc.

" ### Type
  call HL("Type"                     , ""                       , g:light_green_A200 , "")                " Int; long; char; etc.
  call HL("StorageClass"             , ""                       , g:green_A200       , "")                " Static; register; volatile; etc.
  call HL("Structure"                , ""                       , g:light_green_A200 , "")                " Struct; union; enum; etc.
  call HL("Typedef"                  , ""                       , g:green_A200       , "")                " A typedef

" ### Special
  call HL("Special"                  , ""                       , g:orange_A200      , "")                " Any special symbol
  call HL("SpecialChar"              , ""                       , g:deep_orange_A200 , "")                " Special character in a constant
  call HL("Tag"                      , ""                       , g:deep_orange_A200 , "")                " You can use CTRL-] on this
  call HL("Delimiter"                , ""                       , g:red_A200         , "")                " Character that needs attention
  call HL("SpecialComment"           , ""                       , g:red_A200         , "")                " Special things inside a comment

" ### Todo
  call HL("Todo"                     , ""                       , g:red_A700         , g:yellow_A200)     " Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" ## Filetype Specific
" ### Git Highlighting
  call LK("gitcommitOverflow"        , "Error"                  , ""                 , "")
  call LK("gitcommitType"            , "Type"                   , ""                 , "")
  call HL("gitcommitDiscardedType"   , ""                       , g:orange_A400      , "")
  call HL("gitcommitSelectedType"    , ""                       , g:light_green_A400 , "")
  call HL("gitcommitUnmergedType"    , ""                       , g:red_A400         , "")
  call LK("gitcommitBlank"           , "Error"                  , ""                 , "")
  call LK("gitcommitComment"         , "Comment"                , ""                 , "")
  call HL("gitcommitOnBranch"        , ""                       , g:blue_A200        , "")
  call LK("gitcommitUntracked"       , "gitcommitUnmergedType"  , ""                 , "")
  call LK("gitcommitDiscarded"       , "gitcommitDiscardedType" , ""                 , "")
  call LK("gitcommitSelected"        , "gitcommitSelectedType"  , ""                 , "")
  call LK("gitcommitUnmerged"        , "gitcommitUnmergedType"  , ""                 , "")
  call HL("gitcommitArrow"           , ""                       , ""                 , "")
  call HL("gitcommitDiscardedArrow"  , ""                       , ""                 , "")
  call HL("gitcommitSelectedArrow"   , ""                       , ""                 , "")
  call HL("gitcommitUnmergedArrow"   , ""                       , ""                 , "")
  call LK("gitcommitFile"            , "Normal"                 , ""                 , "")
  call HL("gitcommitUntrackedFile"   , ""                       , g:red_A100         , "")
  call HL("gitcommitDiscardedFile"   , ""                       , g:orange_A100      , "")
  call HL("gitcommitSelectedFile"    , ""                       , g:light_green_A100 , "")
  call LK("gitcommitUnmergedFile"    , "gitcommitUntrackedFile" , ""                 , "")
  call HL("gitcommitBranch"          , ""                       , g:deep_purple_A100 , "")
  call HL("gitcommitNoBranch"        , ""                       , g:red_A200         , "")
  call HL("gitcommitHeader"          , "Bold"                   , g:light_blue_A200  , "")
  call LK("gitcommitNoChanges"       , "Normal"                 , ""                 , "")
  call HL("gitcommitSummary"         , ""                       , ""                 , "")

" ### Jinja2
  call LK("jinjaOperator"            , "Nop"                    , ""                 , "")
  call LK("jinjaString"              , "String"                 , ""                 , "")

" ### Markdown
  call LK("markdownHeadingDelimiter" , "Title"                  , ""                 , "")

" ### Vimscript Syntax
  call LK("vimCommand"               , "Keyword"                , ""                 , "")
  call LK("vimFuncBody"              , "Function"               , ""                 , "")
  call LK("vimFuncVar"               , "Nop"                    , ""                 , "")
  call LK("vimNotFunc"               , "Conditional"            , ""                 , "")
  call LK("vimUserFunc"              , "Function"               , ""                 , "")
  call LK("vimVar"                   , "Nop"                    , ""                 , "")

" ### YAML Syntax Highlight
  call LK("yamlFlowString"           , "String"                 , ""                 , "")
  call LK("yamlBool"                 , "Boolean"                , ""                 , "")

" ### Mail highlighting
  call HL("mailQuoted1"              , ""                       , g:purple_A100      , "")
  call HL("mailQuoted2"              , ""                       , g:indigo_A100      , "")
  call HL("mailQuoted3"              , ""                       , g:cyan_A100        , "")
  call HL("mailQuoted4"              , ""                       , g:green_A100       , "")
  call HL("mailQuoted5"              , ""                       , g:yellow_A100      , "")
  call HL("mailQuoted6"              , ""                       , g:orange_A100      , "")
  call HL("mailURL"                  , ""                       , g:blue_A200        , "")
  call HL("mailEmail"                , ""                       , g:blue_A200        , "")

" ## Plugins
" ### Vim Indent Guides
  call HL("IndentGuidesOdd"          , ""                       , ""                 , g:brown_800)
  call HL("IndentGuidesEven"         , ""                       , ""                 , "")

" ### Git Blame Nvim
  call HL("GitBlame"                 , ""                       , g:brown_300        , g:grey_900)

" ## CoC
" ### CoC - Menu
  call HL("CocMenuSel"               , ""                       , ""                 , g:light_green_900)

" ### CoC - Float
  call HL("CocFloating"              , ""                       , g:grey_300         , g:grey_900)

" ### CoC - List Statusline
  call HL("CocListMode"              , "bold"                   , g:black            , g:yellow_A100)
  call HL("CocListModeToNumber"      , ""                       , g:yellow_A100      , g:grey_800)
  call HL("CocListNumber"            , ""                       , g:green_A100       , g:grey_800)
  call HL("CocListNumberToInfo"      , ""                       , g:grey_800         , g:grey_A700)
  call HL("CocListInfo"              , ""                       , g:grey_300         , g:grey_A700)

" ### CoC - Snippet
  call HL("CocSnippetVisual"         , ""                       , g:yellow_A100      , g:grey_800)

" vim: fdm=indent
