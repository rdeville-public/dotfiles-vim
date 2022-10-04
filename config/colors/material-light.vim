" Vim color file

" If you're using a symlink to your script, but your resources are in
" the same directory as the actual script, you'll need to do this:
"   1: Get the absolute path of the script
"   2: Resolve all symbolic links
"   3: Get the folder of the resolved absolute file
let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')


function! s:HL(group, attr, fg, bg, ...)
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

function! s:LK(groupdest, groupsrc, ...)
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

" ## Base Interface
  call s:HL("Italic"                   , "italic"                 , ""                 , "")                " Italic text
  call s:HL("Underlined"               , "underline"              , ""                 , "")                " Underline text
  call s:HL("Bold"                     , "bold"                   , ""                 , "")                " Bold text
  call s:HL("Normal"                   , ""                       , g:grey_100         , g:grey_900)        " Normal text
  call s:HL("NormalFloat"              , ""                       , g:grey_100         , g:grey_800)        " Normal text in floating windows.
  call s:HL("NormalNC"                 , ""                       , ""                 , g:black)           " Normal text in non-current windows
  call s:LK("MsgArea"                  , "Normal"                 , ""                 , "")                " Area for messages and cmdline
  call s:HL("Visual"                   , ""                       , ""                 , g:orange_900)      " Visual mode selection
  call s:LK("VisualNOS"                , "Visual"                 , ""                 , "")                " Visual mode selection when vim is 'Not Owning the Selection'.
  call s:HL("NonText"                  , ""                       , g:grey_500         , "")                " '@' at the end of the window characters from 'showbreak' Popup menu: selected item.
  call s:HL("Debug"                    , ""                       , g:white            , g:light_green_900) " Debug statement
  call s:HL("WarningMsg"               , ""                       , g:white            , g:orange_900)      " Warning messages
  call s:HL("Error"                    , ""                       , g:white            , g:red_900)         " Error Statement
  call s:HL("ErrorMsg"                 , ""                       , g:white            , g:red_900)         " Error messages on the command line
  call s:HL("ModeMsg"                  , ""                       , g:light_green_500  , "")                " 'showmode' message;e.g. '-- INSERT --'
  call s:HL("MoreMsg"                  , ""                       , g:light_green_500  , "")                " |more-prompt|
  call s:HL("LineNr"                   , ""                       , g:grey_400         , g:grey_700)        " Line number for ':number' and ':#' commands and when 'number'
  call s:HL("CursorLine"               , ""                       , ""                 , g:grey_800)        " Screen-line at the cursor when 'cursorline' is set.
  call s:LK("CursorColumn"             , "CursorLine"             , ""                 , "")                " Screen-column at the cursor when 'cursorcolumn' is set.
  call s:LK("CursorLineNr"             , "CursorLine"             , ""                 , "")                " Like LineNr when 'cursorline' or 'relativenumber' is set for
  call s:LK("FoldColumn"               , "LineNr"                 , ""                 , "")                " Fold Column left to the line nr
  call s:HL("Pmenu"                    , ""                       , g:grey_200         , g:grey_800)        " Popup menu: normal item.
  call s:HL("PmenuSel"                 , ""                       , g:grey_800         , g:green_500)       " Popup menu: selected item.
  call s:HL("PmenuSbar"                , ""                       , ""                 , g:grey_500)        " Popup menu: scrollbar.
  call s:HL("PmenuThumb"               , ""                       , ""                 , g:green_900)       " Popup menu: Thumb of the scrollbar.
  call s:LK("Menu"                     , "Pmenu"                  , ""                 , "")                " Current font background and foreground colors of the menus.
  call s:LK("WildMenu"                 , "PmenuSel"               , ""                 , "")                " Current match in 'wildmenu' completion
  call s:HL("StatusLine"               , ""                       , ""                 , g:grey_700)        " status line of current window
  call s:HL("StatusLineNC"             , ""                       , ""                 , "")                " status lines of not-current windows
  call s:HL("TabLine"                  , ""                       , ""                 , "")                " Tab pages line not active tab page label
  call s:HL("TabLineFill"              , ""                       , ""                 , "")                " Tab pages line where there are no labels
  call s:HL("TabLineSel"               , ""                       , g:yellow_900       , "")                " Tab pages line; active tab page label
  call s:HL("VertSplit"                , ""                       , g:grey_700         , g:grey_700)        " The column separating vertically split windows
  call s:HL("ColorColumn"              , ""                       , ""                 , g:grey_800)        " Used for the columns set with 'colorcolumn'
  call s:HL("Folded"                   , "italic"                 , g:grey_400         , g:grey_800 )       " Line used for closed folds
  call s:HL("Search"                   , ""                       , ""                 , g:yellow_100)      " Last search pattern highlighting ;see 'hlsearch' .
  call s:LK("IncSearch"                , "Search"                 , ""                 , "")                " 'incsearch' highlighting; also used for the text replaced with
  call s:HL("Substitute"               , ""                       , g:grey_800         , g:yellow_200)      " |:substitute| replacement text highlighting
  call s:HL("MatchParen"               , ""                       , ""                 , g:light_blue_200)  " The character under the cursor or just before it; if it
  call s:HL("SpecialKey"               , ""                       , g:red_500          , "")                " Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
  call s:HL("Whitespace"               , ""                       , ""                 , "")                " 'nbsp'; 'space'; 'tab' and 'trail' in 'listchars'
  call s:HL("SignColumn"               , ""                       , g:grey_400         , g:grey_800)        " Column where |signs| are displayed
  call s:HL("EndOfBuffer"              , ""                       , g:grey_900         , g:grey_900)        " Filler lines `~` after the end of the buffer. cursor in an unfocused terminal
  call s:HL("Title"                    , "bold"                   , g:cyan_500         , "")                " Title ;for markdown for instance
  call s:HL("Directory"                , ""                       , g:teal_300         , "")                " Directory names and other special names in listings)

" ## Diff Mode
  call s:HL("DiffAdd"                  , ""                       , g:green_500        , g:blue_grey_900)   " Diff mode: Added line |diff.txt|
  call s:HL("DiffChange"               , ""                       , ""                 , g:brown_900)       " Diff mode: Changed line |diff.txt|
  call s:HL("DiffDelete"               , ""                       , g:red_500          , g:blue_grey_900)   " Diff mode: Deleted line |diff.txt|
  call s:HL("DiffText"                 , "italic"                 , ""                 , g:blue_grey_700  ) " Diff mode: Changed text within a changed line |diff.txt|

" ## Spelling
  call s:HL("SpellBad"                 , "undercurl"              , ""                 , g:yellow_500)      " Word that is not recognized by the spellchecker.
  call s:HL("SpellCap"                 , "undercurl"              , ""                 , g:yellow_500)      " Word that should start with a capital.
  call s:HL("SpellLocal"               , "undercurl"              , ""                 , g:yellow_500)      " Word that is recognized by the spellchecker as one that is used in another region.
  call s:HL("SpellRare"                , "undercurl"              , ""                 , g:yellow_500)      " Word that is recognized by the spellchecker as one that is hardly ever used.

" ## Standard syntax highlighting
  call s:HL("Comment"                  , ""                       , g:grey_400         , "")                " Any Comment

" ## Value
  call s:HL("Constant"                 , ""                       , g:orange_A200      , "")                " Any constant
  call s:HL("String"                   , ""                       , g:deep_orange_A200 , "")                " A string constant: 'this is a string'
  call s:HL("Character"                , ""                       , g:red_A200         , "")                " A character constant: 'c'; '\n'
  call s:HL("Number"                   , ""                       , g:amber_A200       , "")                " A number constant: 234; 0xff
  call s:HL("Boolean"                  , ""                       , g:orange_A200      , "")                " A boolean constant: TRUE; false
  call s:LK("Float"                    , "Number"                 , ""                 , "")                " A floating point constant: 2.3e10

" ## Definition
  call s:HL("Identifier"               , ""                       , g:purple_A100      , "")                " Any variable name
  call s:HL("Function"                 , ""                       , g:deep_purple_A100 , "")                " Function name also: methods for classes)

" ## Keywords
  call s:HL("Statement"                , ""                       , g:cyan_A100        , "")                " Any statement
  call s:HL("Conditional"              , ""                       , g:blue_A100        , "")                " If; then; else; endif; switch; etc.
  call s:LK("Repeat"                   , "Statement"              , ""                 , "")                " For; do; while; etc.
  call s:LK("Label"                    , "Conditional"            , ""                 , "")                " Case; default; etc.
  call s:LK("Operator"                 , "Statement"              , ""                 , "")                " "sizeof"; "+"; "*"; etc.
  call s:HL("Keyword"                  , ""                       , g:light_blue_A100  , "")                " Any other keyword
  call s:LK("Exception"                , "Statement"              , ""                 , "")                " Try; catch; throw

" ## Macro & Preprocessor
  call s:HL("PreProc"                  , ""                       , g:yellow_A400      , "")                " Generic Preprocessor
  call s:LK("Include"                  , "PreProc"                , ""                 , "")                " Preprocessor #include
  call s:LK("Define"                   , "PreProc"                , ""                 , "")                " Preprocessor #define
  call s:LK("Macro"                    , "PreProc"                , ""                 , "")                " Same as Define
  call s:LK("PreCondit"                , "PreProc"                , ""                 , "")                " Preprocessor #if; #else; #endif; etc.

" ## Type
  call s:HL("Type"                     , ""                       , g:light_green_A200 , "")                " Int; long; char; etc.
  call s:HL("StorageClass"             , ""                       , g:green_A200       , "")                " Static; register; volatile; etc.
  call s:HL("Structure"                , ""                       , g:light_green_A200 , "")                " Struct; union; enum; etc.
  call s:HL("Typedef"                  , ""                       , g:green_A200       , "")                " A typedef

" ## Special
  call s:HL("Special"                  , ""                       , g:orange_A200      , "")                " Any special symbol
  call s:HL("SpecialChar"              , ""                       , g:deep_orange_A200 , "")                " Special character in a constant
  call s:HL("Tag"                      , ""                       , g:deep_orange_A200 , "")                " You can use CTRL-] on this
  call s:HL("Delimiter"                , ""                       , g:red_A200         , "")                " Character that needs attention
  call s:HL("SpecialComment"           , ""                       , g:red_A200         , "")                " Special things inside a comment

" ## Todo
  call s:HL("Todo"                     , ""                       , g:red_A700         , g:yellow_A200)     " Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" ## Git Highlighting
  call s:LK("gitcommitOverflow"        , "Error"                  , ""                 , "")
  call s:LK("gitcommitType"            , "Type"                   , ""                 , "")
  call s:HL("gitcommitDiscardedType"   , ""                       , g:orange_A400      , "")
  call s:HL("gitcommitSelectedType"    , ""                       , g:light_green_A400 , "")
  call s:HL("gitcommitUnmergedType"    , ""                       , g:red_A400         , "")
  call s:LK("gitcommitBlank"           , "Error"                  , ""                 , "")
  call s:LK("gitcommitComment"         , "Comment"                , ""                 , "")
  call s:HL("gitcommitOnBranch"        , ""                       , g:blue_A200        , "")
  call s:LK("gitcommitUntracked"       , "gitcommitUnmergedType"  , ""                 , "")
  call s:LK("gitcommitDiscarded"       , "gitcommitDiscardedType" , ""                 , "")
  call s:LK("gitcommitSelected"        , "gitcommitSelectedType"  , ""                 , "")
  call s:LK("gitcommitUnmerged"        , "gitcommitUnmergedType"  , ""                 , "")
  " call s:HL("gitcommitArrow"           , ""                       , ""                 , "")
  " call s:HL("gitcommitDiscardedArrow"  , ""                       , ""                 , "")
  " call s:HL("gitcommitSelectedArrow"   , ""                       , ""                 , "")
  " call s:HL("gitcommitUnmergedArrow"   , ""                       , ""                 , "")
  call s:LK("gitcommitFile"            , "Normal"                 , ""                 , "")
  call s:HL("gitcommitUntrackedFile"   , ""                       , g:red_A100         , "")
  call s:HL("gitcommitDiscardedFile"   , ""                       , g:orange_A100      , "")
  call s:HL("gitcommitSelectedFile"    , ""                       , g:light_green_A100 , "")
  call s:LK("gitcommitUnmergedFile"    , "gitcommitUntrackedFile" , ""                 , "")
  call s:HL("gitcommitBranch"          , ""                       , g:deep_purple_A100 , "")
  call s:HL("gitcommitNoBranch"        , ""                       , g:red_A200         , "")
  call s:HL("gitcommitHeader"          , ""                       , g:light_blue_A200  , ""                                                                                                                                              , "bold")
  call s:LK("gitcommitNoChanges"       , "Normal"                 , ""                 , "")
  " call s:HL("gitcommitSummary"         , ""                       , ""                 , "")

" ## Jinja2
  call s:LK("jinjaOperator"            , "Nop"                    , ""                 , "")
  call s:LK("jinjaString"              , "String"                 , ""                 , "")

" ## Markdown
  call s:LK("markdownHeadingDelimiter" , "Title"                  , ""                 , "")

" ## Vimscript Syntax
  call s:LK("vimCommand"               , "Keyword"                , ""                 , "")
  call s:LK("vimFuncBody"              , "Function"               , ""                 , "")
  call s:LK("vimFuncVar"               , "Nop"                    , ""                 , "")
  call s:LK("vimNotFunc"               , "Conditional"            , ""                 , "")
  call s:LK("vimUserFunc"              , "Function"               , ""                 , "")
  call s:LK("vimVar"                   , "Nop"                    , ""                 , "")

" YAML Syntax Highlight
  call s:LK("yamlFlowString"           , "String"                 , ""                 , "")
  call s:LK("yamlBool"                 , "Boolean"                , ""                 , "")

" Mail highlighting
  " call s:HL("mailQuoted1"              , ""                       , g:yellow_500       , "")
  " call s:HL("mailQuoted2"              , ""                       , g:light_green_500  , "")
  " call s:HL("mailQuoted3"              , ""                       , g:purple_500       , "")
  " call s:HL("mailQuoted4"              , ""                       , g:light_blue_500   , "")
  " call s:HL("mailQuoted5"              , ""                       , g:blue_500         , "")
  " call s:HL("mailQuoted6"              , ""                       , g:yellow_500       , "")
  " call s:HL("mailURL"                  , ""                       , g:blue_500         , "")
  " call s:HL("mailEmail"                , ""                       , g:blue_500         , "")


silent! AirlineRefresh

" vim: fdm=indent

