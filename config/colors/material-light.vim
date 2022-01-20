" Vim color file

let s:colorizer_scripts = filter(split(execute(':scriptname'), "\n"), 'v:val =~? "autoload/Colorizer.vim"')
if len(s:colorizer_scripts) != 1
  echoerr "[Error] Plugins Colorizer do not seems to be installed/activated."
  echoerr "[Error] Please see https://github.com/chrisbra/colorizer."
else
  execute 'source ' . expand(get(split(get(s:colorizer_scripts,0), ':'),1))

" Highlighting function
" Optional variables are attributes and guisp
function! g:SetHighlight(group, guifg, guibg, ...)
  let l:attr = get(a:, 1, "")
  let l:guisp = get(a:, 2, "")

  if a:guifg != ""
    let l:ctermfg = Colorizer#RGB2Term(a:guifg,"!")
    exec "hi! " . a:group . " guifg=" . a:guifg . " ctermfg=" . l:ctermfg
  endif
  if a:guibg != ""
    let l:ctermbg = Colorizer#RGB2Term(a:guibg,"!")
    exec "hi! " . a:group . " guibg=" . a:guibg . " ctermbg=" . l:ctermbg
  endif
  if l:attr != ""
    exec "hi! " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  else
    exec "hi! " . a:group . " gui=none cterm=none"
  endif
  if l:guisp != ""
    let l:ctermsp = Colorizer#RGB2Term(l:guisp,"!")
    exec "hi! " . a:group . " guisp=" . l:guisp
  endif
endfunction

function! g:LinkHighlight(groupdest, groupsrc)
  exec "hi! default link " . a:groupdest . " " . a:groupsrc
endfunction

exe 'source ' . new_rtp . '/colors/definition/all_colors.vim'

" # Theme Setup
" First clear existing highlight
syntax reset
" Define name of the colorscheme
let g:colors_name = "material-light"

" ## Base Interface
  " Italic text
  call g:SetHighlight  ( "Italic"         , ""                 , ""                  , "italic"                     )
  " Underline text
  call g:SetHighlight  ( "Underlined"     , ""                 , ""                  , "underline"                  )
  " Bold text
  call g:SetHighlight  ( "Bold"           , ""                 , ""                  , "bold"                       )
  " Normal text
  call g:SetHighlight  ( "Normal"         , g:grey_900         , g:grey_100                                         )
  " Normal text in floating windows.
  call g:SetHighlight  ( "NormalFloat"    , g:grey_900         , g:grey_300                                         )
  " Normal text in non-current windows
  call g:SetHighlight  ( "NormalNC"       , ""                 , g:grey_300                                         )
  " Area for messages and cmdline
  call g:LinkHighlight ( "MsgArea"        , "Normal"                                                                )
  " Visual mode selection
  call g:SetHighlight  ( "Visual"         , ""                 , g:grey_400                                         )
  " Visual mode selection when vim is 'Not Owning the Selection'.
  call g:LinkHighlight ( "VisualNOS"      , "Visual"                                                                )
  " '@' at the end of the window characters from 'showbreak' Popup menu:
  " selected item.
  call g:SetHighlight  ( "NonText"        , g:grey_500         , ""                                                 )
  " Debug statement
  call g:SetHighlight  ( "Debug"          , g:white            , g:light_green_900                                  )
  " Warning messages
  call g:SetHighlight  ( "WarningMsg"     , g:white            , g:orange_900                                       )
  " Error Statement
  call g:SetHighlight  ( "Error"          , g:white            , g:red_900                                          )
  " Error messages on the command line
  call g:SetHighlight  ( "ErrorMsg"       , g:white            , g:red_900                                          )
  " 'showmode' message;e.g. "-- INSERT --"                                                                          )
  call g:SetHighlight  ( "ModeMsg"        , g:light_green_900  , ""                                                 )
  " |more-prompt|
  call g:SetHighlight  ( "MoreMsg"        , g:light_green_500  , ""                                                 )
  " Line number for ':number' and ':#' commands and when 'number'
  call g:SetHighlight  ( "LineNr"         , g:grey_700         , g:grey_400                                         )
  " Screen-line at the cursor when 'cursorline' is set.
  call g:SetHighlight  ( "CursorLine"     , ""                 , g:grey_300                                         )
  " Screen-column at the cursor when 'cursorcolumn' is set.
  call g:LinkHighlight ( "CursorColumn"   , "CursorLine"                                                            )
  " Like LineNr when 'cursorline' or 'relativenumber' is set for
  call g:LinkHighlight ( "CursorLineNr"   , "CursorLine"                                                            )
  " Fold Column left to the line nr
  call g:LinkHighlight ( "FoldColumn"     , "LineNr"                                                                )
  " Popup menu: normal item.
  call g:SetHighlight  ( "Pmenu"          , g:grey_800         , g:grey_300                                         )
  " Popup menu: selected item.
  call g:SetHighlight  ( "PmenuSel"       , g:grey_300         , g:green_500                                        )
  " Popup menu: scrollbar.
  call g:SetHighlight  ( "PmenuSbar"      , ""                 , g:grey_500                                         )
  " Popup menu: Thumb of the scrollbar.
  call g:SetHighlight  ( "PmenuThumb"     , ""                 , g:green_200                                        )
  " Current font background and foreground colors of the menus.
  call g:LinkHighlight ( "Menu"           , "Pmenu"                                                                 )
  " Current match in 'wildmenu' completion
  call g:LinkHighlight ( "WildMenu"       , "PmenuSel"                                                              )
  " status line of current window
  call g:SetHighlight  ( "StatusLine"     , ""                 , g:grey_300                                         )
  " status lines of not-current windows
  call g:SetHighlight  ( "StatusLineNC"   , ""                 , ""                                                 )
  " Tab pages line not active tab page label
  call g:SetHighlight  ( "TabLine"        , ""                 , ""                                                 )
  " Tab pages line where there are no labels
  call g:SetHighlight  ( "TabLineFill"    , ""                 , ""                                                 )
  " Tab pages line; active tab page label
  call g:SetHighlight  ( "TabLineSel"     , g:yellow_900       , ""                                                 )
  " The column separating vertically split windows
  call g:SetHighlight  ( "VertSplit"      , g:grey_900         , g:grey_100                                         )
  " Used for the columns set with 'colorcolumn'
  call g:SetHighlight  ( "ColorColumn"    , ""                 , g:grey_200                                         )
  " Line used for closed folds
  call g:SetHighlight  ( "Folded"         , g:grey_800         , g:grey_300          , "italic"                     )
  " Last search pattern highlighting ;see 'hlsearch'.
  call g:SetHighlight  ( "Search"         , ""                 , g:yellow_100                                       )
  " 'incsearch' highlighting; also used for the text replaced with
  call g:LinkHighlight ( "IncSearch"      , "Search"                                                                )
  " |:substitute| replacement text highlighting
  call g:SetHighlight  ( "Substitute"     , g:grey_800         , g:yellow_200                                       )
  " The character under the cursor or just before it; if it
  call g:SetHighlight  ( "MatchParen"     , ""                 , g:light_blue_200                                   )
  " Unprintable characters: text displayed differently from what
  " it really is. But not 'listchars' whitespace. |hl-Whitespace|
  call g:SetHighlight  ( "SpecialKey"     , g:red_500          , ""                                                 )
  " "nbsp"; "space"; "tab" and "trail" in 'listchars'
  call g:SetHighlight  ( "Whitespace"     , ""                 , ""                                                 )
  " Column where |signs| are displayed
  call g:SetHighlight  ( "SignColumn"     , g:grey_800         , g:grey_400                                         )
  " Filler lines `~` after the end of the buffer. cursor in an unfocused
  " terminal
  call g:SetHighlight  ( "EndOfBuffer"    , g:grey_100         , g:grey_100                                         )
  " Title ;for markdown for instance
  call g:SetHighlight  ( "Title"          , g:cyan_500         , ""                  , "bold"                       )
  " Directory names and other special names in listings                                                             )
  call g:SetHighlight  ( "Directory"      , g:teal_300         , ""                                                 )


" ## Diff Mode
  " Diff mode: Added line |diff.txt|
  call g:SetHighlight  ( "DiffAdd"        , g:green_500        , g:blue_grey_100     , "none"                       )
  " Diff mode: Changed line |diff.txt|
  call g:SetHighlight  ( "DiffChange"     , ""                 , g:brown_100         , "none"                       )
  " Diff mode: Deleted line |diff.txt|
  call g:SetHighlight  ( "DiffDelete"     , g:red_500          , g:blue_grey_100     , "none"                       )
  " Diff mode: Changed text within a changed line |diff.txt|
  call g:SetHighlight  ( "DiffText"       , ""                 , g:blue_grey_200     , "italic"                     )

" ## Spelling
  " Word that is not recognized by the spellchecker. |spell|
  " Combined with the highlighting used otherwise.
  call g:SetHighlight  ( "SpellBad"       , ""                 , ""                  , "undercurl"   , g:yellow_500 )
  " Word that should start with a capital. |spell|
  " Combined with the highlighting used otherwise.
  call g:SetHighlight  ( "SpellCap"       , ""                 , ""                  , "undercurl"   , g:yellow_500 )
  " speling
  " Word that is recognized by the spellchecker as one that is used in another
  " region. |spell|
  " Combined with the highlighting used otherwise.
  call g:SetHighlight  ( "SpellLocal"     , ""                 , ""                  , "undercurl"   , g:yellow_500 )
  " Word that is recognized by the spellchecker as one that is hardly ever
  " used. |spell|
  " Combined with the highlighting used otherwise.
  call g:SetHighlight  ( "SpellRare"      , ""                 , ""                  , "undercurl"   , g:yellow_500 )

" ## Standard syntax highlighting
  " Any Comment
  call g:SetHighlight  ( "Comment"        , g:grey_600         , ""                                                 )

" ## Value
  " Any constant
  call g:SetHighlight  ( "Constant"       , g:orange_A700      , ""                                                 )
  " A string constant: "this is a string"
  call g:SetHighlight  ( "String"         , g:deep_orange_A700 , ""                                                 )
  " A character constant: 'c'; '\n'
  call g:SetHighlight  ( "Character"      , g:red_A700         , ""                                                 )
  " A number constant: 234; 0xff
  call g:SetHighlight  ( "Number"         , g:amber_A700       , ""                                                 )
  " A boolean constant: TRUE; false
  call g:SetHighlight  ( "Boolean"        , g:orange_A700      , ""                                                 )
  " A floating point constant: 2.3e10
  call g:LinkHighlight ( "Float"          , "Number"                                                                )

" ## Definition
  " Any variable name
  call g:SetHighlight  ( "Identifier"     , g:purple_A700      , ""                                                 )
  " Function name also: methods for classes                                                                         )
  call g:SetHighlight  ( "Function"       , g:deep_purple_A700 , ""                                                 )

" ## Keywords
  " Any statement
  call g:SetHighlight  ( "Statement"      , g:cyan_A700        , ""                                                 )
  " If; then; else; endif; switch; etc.
  call g:SetHighlight  ( "Conditional"    , g:blue_A700        , ""                                                 )
  " For; do; while; etc.
  call g:LinkHighlight ( "Repeat"         , "Statement"                                                             )
  " Case; default; etc.
  call g:LinkHighlight ( "Label"          , "Conditional"                                                           )
  " "sizeof"; "+"; "*"; etc.
  call g:LinkHighlight ( "Operator"       , "Statement"                                                             )
  " Any other keyword
  call g:SetHighlight  ( "Keyword"        , g:light_blue_A700  , ""                                                 )
  " Try; catch; throw
  call g:LinkHighlight ( "Exception"      , "Statement"                                                             )

" ## Macro & Preprocessor
  " Generic Preprocessor
  call g:SetHighlight  ( "PreProc"        , g:yellow_700       , ""                                                 )
  " Preprocessor #include
  call g:LinkHighlight ( "Include"        , "PreProc"                                                               )
  " Preprocessor #define
  call g:LinkHighlight ( "Define"         , "PreProc"                                                               )
  " Same as Define
  call g:LinkHighlight ( "Macro"          , "PreProc"                                                               )
  " Preprocessor #if; #else; #endif; etc.
  call g:LinkHighlight ( "PreCondit"      , "PreProc"                                                               )

" ## Type
  " Int; long; char; etc.
  call g:SetHighlight  ( "Type"           , g:light_green_A700 , ""                                                 )
  " Static; register; volatile; etc.
  call g:SetHighlight  ( "StorageClass"   , g:green_A700       , ""                                                 )
  " Struct; union; enum; etc.
  call g:SetHighlight  ( "Structure"      , g:light_green_A700 , ""                                                 )
  " A typedef
  call g:SetHighlight  ( "Typedef"        , g:green_A700       , ""                                                 )

" ## Special
  " Any special symbol
  call g:SetHighlight  ( "Special"        , g:orange_A700      , ""                                                 )
  " Special character in a constant
  call g:SetHighlight  ( "SpecialChar"    , g:deep_orange_A700 , ""                                                 )
  " You can use CTRL-] on this
  call g:SetHighlight  ( "Tag"            , g:deep_orange_A700 , ""                                                 )
  " Character that needs attention
  call g:SetHighlight  ( "Delimiter"      , g:red_A700         , ""                                                 )
  " Special things inside a comment
  call g:SetHighlight  ( "SpecialComment" , g:red_A700         , ""                                                 )

" ## Todo
  " Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  call g:SetHighlight  ( "Todo"           , g:red_A700         , g:yellow_A200                                      )

" Mail highlighting
"call g:SetHighlight("mailQuoted1"                , g:yellow      , ""         )
"call g:SetHighlight("mailQuoted2"                , g:light_green , ""         )
"call g:SetHighlight("mailQuoted3"                , g:purple      , ""         )
"call g:SetHighlight("mailQuoted4"                , g:light_blue  , ""         )
"call g:SetHighlight("mailQuoted5"                , g:blue        , ""         )
"call g:SetHighlight("mailQuoted6"                , g:yellow      , ""         )
"call g:SetHighlight("mailURL"                    , g:blue        , ""         )
"call g:SetHighlight("mailEmail"                  , g:blue        , ""         )
"

" Load custom syntax per languague
for f in split(glob(new_rtp . '/colors/syntax/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob(new_rtp . '/plugins/*/highlight.vim'), '\n')
  exe 'source' f
endfor

silent! AirlineRefresh
"
endif

" vim: fdm=indent
