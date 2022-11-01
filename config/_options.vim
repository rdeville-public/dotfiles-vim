#!/usr/bin/env vim
" # DESCRIPTION
  " Set the main VIM and NeoVim variables optained from command ':options'.
  " Not every variables configuration are set in this file. Variable which use the
  " default value and which are dangerous to modify or which can be breaken if
  " set.
  "
  " For instance, see variable `keywordrg` which define the program used for the
  " `k` command, i.e. show help. When using command `:options`, its shown to be
  " set to `man`, but if following line is present in the file, then help can only
  " be shown for command which have a man page, leading to not showing help for
  " vim command in vimscript for instance.


" # FILE CONFIGURATION
  " Specify the character encoding used in the script. The following lines will be
  " converted from [encoding] to the value of the 'encoding' option, if they are
  " different.
scriptencoding utf-8

" # FILETYPE CONFIGURATION
    " Enable/disable file type detection
  filetype on
    " Enable/disable loading the plugin files for specific file types
  filetype plugin on
    " Enable/disable loading the indent file for specific file types
  filetype indent on
    " Enable/disable syntax highlighting
  syntax enable

" # GENERAL VIM OPTIONS
  " Categories:
  "
  " * [Important](#important)
  " * [Moving Around, Searching And Patterns](#moving-around--searching-and-patterns)
  " * [Tags](#tags)
  " * [Displaying Text](#displaying-text)
  " * [Syntax, Highlighting And Spelling](#syntax-highlighting-and-spelling)
  " * [Multiple Windows](#multiple-windows)
  " * [Multiple Tab Pages](#multiple-tab-pages)
  " * [Terminal](#terminal)
  " * [Using The Mouse](#using-the-mouse)
  " * [Printing](#printing)
  " * [Messages And Info](#messages-and-info)
  " * [Selecting Text](#selecting-text)
  " * [Editing Text](#editing-text)
  " * [Tabs And Indenting](#tabs-and-indenting)
  " * [Folding](#folding)
  " * [Diff Mode](#diff-mode)
  " * [Mapping](#mapping)
  " * [Reading And Writing Files](#reading-and-writing-files)
  " * [The Swap File](#the-swap-file)
  " * [Command Line Editing](#command-line-editing)
  " * [Executing External Commands](#executing-external-commands)
  " * [Running Make And Jumping To Errors](#running-make-and-jumping-to-errors)
  " * [Language Specific](#language-specific)
  " * [Multi-Byte Characters](#multi-byte-characters)
  " * [Various](#various)

" ## IMPORTANT
    " Behave very Vi compatible (not advisable)
  set nocompatible
    " List of flags to specify Vi compatibility:
    "
    " * `a`: When included, a `:read` command with a file name argument will set
    "        the alternate file name for the current window.
    " * `A`: When included, a `:write` command with a file name argument will set
    "        the alternate file name for the current window.
    " * `B`: A backslash has no special meaning in mappings, abbreviations and the
    "        `to` part of the menu commands. Remove this flag to be able to use a
    "        backslash like a CTRL-V.
    " * `c`: Searching continues at the end of any match at the cursor position,
    "        but not further than the start of the next line.  When not present
    "        searching continues one character from the cursor position.  With 'c'
    "        `abababababab` only gets three matches when repeating `/abab",
    "        without 'c' there are five matches.
    " * `e`: When executing a register with `:@r", always add a <CR> to the last
    "        line, also when the register is not linewise.  If this flag is not
    "        present, the register is not linewise and the last line does not end
    "        in a <CR>, then the last line is put on the command-line and can be
    "        edited before hitting <CR>.
    " * `F`: When included, a `:write` command with a file name argument will set
    "        the file name for the current buffer, if the current buffer doesn't
    "        have a file name yet.
    " * `s`: Set buffer options when entering the buffer for the first time.  This
    "        is like it is in Vim version 3.0. And it is the default.  If not
    "        present the options are set when the buffer is created.
  set cpoptions=aABceFs
    " Use Insert mode as the default mode
  set noinsertmode
    " Paste mode, insert typed text literally
  set nopaste
    " Key sequence to toggle paste mode
  set pastetoggle=<F2>
    " List of directories used for runtime files and plugins
  set runtimepath+=~/.config/vim
    " List of directories used for plugin packages
  set packpath+=~/.config/vim/.plugins_installed

" ## MOVING AROUND, SEARCHING AND PATTERNS
    " List of flags specifying which commands wrap to another line (local to
    " window):
    "
    " | Char | Key       | Mode                                |
    " | :--- | :---      | :---                                |
    " | `b`  | `<BS>`    | Normal and Visual                   |
    " | `s`  | `<Space>` | Normal and Visual                   |
    " | `h`  | `"h"`     | Normal and Visual (not recommended) |
    " | `l`  | `"l"`     | Normal and Visual (not recommended) |
    " | `<`  | `<Left>`  | Normal and Visual                   |
    " | `>`  | `<Right>` | Normal and Visual                   |
    " | `~`  | `"~"`     | Normal                              |
    " | `[`  | `<Left>`  | Insert and Replace                  |
    " | `]`  | `<Right>` | Insert and Replace                  |
  set whichwrap=b,s,h,l,<,>,[,],~
    " Many jump commands move the cursor to the first non-blank character of a line
  set startofline
    " Nroff macro names that separate paragraphs
  set paragraphs=IPLPPPQPP\ TPHPLIPpLpItpplpipbp
    " Nroff macro names that separate sections
  set sections=SHNHH\ HUnhsh
    " List of directory names used for file searching (global or local to buffer)
  set path=.,/usr/include,,
    " List of directory names used for `:cd`
  set cdpath=,,
    " Change to directory of file in buffer
  set noautochdir
    " Search commands wrap around the end of the buffer
  set wrapscan
    " Show match for partly typed search command
  set incsearch
    " Change the way backslashes are used in search patterns
  set magic
    " Select the default regexp engine used
    "
    " * `0` : Automatic selection
    " * `1` : Old engine
    " * `2` : NFA engine
  set regexpengine=0
    " Ignore case when using a search pattern
  set ignorecase
    " Override 'ignorecase' when pattern has upper case characters
  set smartcase
    " What method to use for changing case of letters
  set casemap=internal,keepascii
    " Maximum amount of memory in Kbyte used for pattern matching
  set maxmempattern=100000
    " Pattern for a macro definition line (global or local to buffer)
    " Pattern for C++ program
  set define=^\(#\s*define\|[a-z]*\s*const\s*[a-z]*\)
    " Pattern for an include-file line (local to buffer)
    " Pattern for C++ program
  set include=^\\s*#\\s*include
    " Expression used to transform an include line to a file name (local to buffer)
  set includeexpr=

" ## TAGS
    " Use binary searching in tags files
  set tagbsearch
    " Number of significant characters in a tag name or zero
  set taglength=0
    " List of file names to search for tags (global or local to buffer)
  set tags=./tags,./TAGS,tags,TAGS
    " How to handle case when searching in tags files (global or local to buffer):
    " `followic` to follow `ignorecase`, `ignore` or `match`
  set tagcase=followic
    " File names in a tags file are relative to the tags file
  set tagrelative
    " A :tag command will use the tagstack
  set tagstack
    " When completing tags in Insert mode show more info
  set showfulltag
    " Command for executing cscope
  set cscopeprg=cscope
    " Use cscope for tag commands
  set cscopetag
    " 0 or 1; the order in which `:cstag` performs a search
  set cscopetagorder=0
    " Give messages when adding a cscope database
  set cscopeverbose
    " How many components of the path to show
  set cscopepathcomp=0
    " When to open a quickfix window for cscope
  set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
    " `cscoperelative` file names in a cscope file are relative to that file
  set nocscoperelative

" ## DISPLAYING TEXT
    " Number of lines to scroll for CTRL-U and CTRL-D (local to window)
  set scroll=15
    " `scrolloff` number of screen lines to show around the cursor
    " Set to 999 to put cursor in middle of screen when using CTRL-U and CTRL-D
  set scrolloff=999
    " Long lines wrap
  set nowrap
    " Wrap long lines at a character in 'breakat' (local to window)
  set nolinebreak
    " Preserve indentation in wrapped text (local to window)
  set breakindent
    " Adjust breakindent behaviour (local to window)
  set breakindentopt=min:20,shift:0
    " Which characters might cause a line break
  set breakat=^I!*-+;:,./?\
    " String to put before wrapped screen lines
  set showbreak=>>
    " Minimal number of columns to scroll horizontally
  set sidescroll=0
    " `sidescrolloff` minimal number of columns to keep left and right of the cursor
  set sidescrolloff=25
    " Include `lastline` to show the last line even if it doesn't fit
    " Include `uhex` to show unprintable characters as a hex number
  set display=lastline
    " Characters to use for the status line, folds and filler lines
  set fillchars=stl:\ ,stlnc:\ ,vert:\|,fold:−,foldopen:,foldclose:,diff:x,foldsep:│
    " Number of lines used for the command-line
  set cmdheight=1
    " Number of lines to scroll for CTRL-F and CTRL-B
  set window=52
    " Don't redraw while executing macros
  set lazyredraw
    " Timeout for 'hlsearch' and :match highlighting in msec
  set redrawtime=1000
    " Delay in msec for each char written to the display (for debugging)
  set writedelay=0
    " Show <Tab> as ^I and end-of-line as $ (local to window)
  set list
    " List of strings used for list mode
  "set listchars=eol:¬,tab:··,extends:→,precedes:←,space:\ ,trail:×,nbsp:·
  set listchars=tab:˾\ ,extends:→,precedes:←,space:\ ,trail:×,nbsp:·
    " Show the line number for each line (local to window)
  set number
    " Show the relative line number for each line (local to window)
  set relativenumber
    " Number of columns to use for the line number (local to window)
  set numberwidth=2
    " Controls whether concealable text is hidden (local to window)
  set conceallevel=0
    " Modes in which text in the cursor line can be concealed (local to window)
  set concealcursor=

" ## SYNTAX, HIGHLIGHTING AND SPELLING
    " `dark` or `light`; the background color brightness
  set background=dark
    " Change color scheme
  colorscheme material-dark
    " Maximum column to look for syntax items (local to buffer)
  set synmaxcol=0
    " Highlight all matches for the last used search pattern
  set hlsearch
    " Use GUI colors for the terminal
  set termguicolors
    " Highlight the screen column of the cursor (local to window)
  set nocursorcolumn
    " Highlight the screen line of the cursor (local to window)
  set cursorline
    " Columns to highlight (local to window)
  set colorcolumn=+1
    " Put vertical column at 81 char, 121 char at 161 char and after 200 char
  let &colorcolumn='81,121,161,'.join(range(201,300),',')
    " Highlight spelling mistakes (local to window)
  set nospell
    " `spelllang` list of accepted languages (local to buffer)
  set spelllang=en_us,fr_fr
    " `spellfile` file that `zg` adds good words to (local to buffer)
  set spellfile=
    " `spellcapcheck` pattern to locate the end of a sentence (local to buffer)
  set spellcapcheck=[.?!]\_[\])'" \t]\+
    " `spellsuggest` methods used to suggest corrections
  set spellsuggest=best
    " `mkspellmem` amount of memory used by :mkspell before compressing
  set mkspellmem=460000,2000,500

" ## MULTIPLE WINDOWS
    " 0, 1 or 2; when to use a status line for the last window
  set laststatus=2
    " Make all windows the same size when adding/removing windows
  set noequalalways
    " In which direction 'noequalalways' works: `ver`, `hor` or `both`
  set eadirection=both
    " Keep the height of the window (local to window)
  set nowinfixheight
    " Minimal number of lines used for the current window
  set winheight=1
    " Minimal number of lines used for any window
  set winminheight=1
    " Keep the width of the window (local to window)
  set nowinfixwidth
    " Minimal number of columns used for the current window
  set winwidth=87
    " Minimal number of columns used for any window
  set winminwidth=15
    " Initial height of the help window
  set helpheight=25
    " Default height for the preview window
  set previewheight=15
    " Identifies the preview window (local to window)
  set nopreviewwindow
    " Don't unload a buffer when no longer shown in a window
  set nohidden
    " `useopen` and/or `split`; which window to use when jumping to a buffer
  set switchbuf=useopen,usetab,newtab
    " A new window is put below the current one
  set splitbelow
    " A new window is put right of the current one
  set splitright
    " This window scrolls together with other bound windows (local to window)
  set noscrollbind
    " `ver`, `hor` and/or `jump`; list of options for 'scrollbind'
  set scrollopt=ver,jump
    " This window's cursor moves together with other bound windows (local to window)
  set nocursorbind

" ## MULTIPLE TAB PAGES
    " 0, 1 or 2; when to use a tab pages line
  set showtabline=2
    " Maximum number of tab pages to open for -p and `tab all`
  set tabpagemax=50

" ## TERMINAL
    " Check built-in termcaps first
  if !has('nvim')
    set ttybuiltin
  endif
    " Terminal connection is fast
  set ttyfast
    " Terminal that requires extra redrawing
  if !has('nvim')
    set noweirdinvert
  endif
    " Recognize keys that start with <Esc> in Insert mode
  if !has('nvim')
    set esckeys
  endif
    " Minimal number of lines to scroll at a time
  set scrolljump=1
    " Maximum number of lines to use scrolling instead of redrawing
  if !has('nvim')
    set ttyscroll=9999
  endif
    " Show info in the window title
  set title
    " Percentage of 'columns' used for the window title
  set titlelen=85
    " When not empty, string to be used for the window title
  set titlestring=%{v:progname}[%{tolower(empty(v:servername)?'':v:servername)}]-\ %t\ %m\ (%{expand('%:p:h')})
    " String to restore the title to when exiting Vim
  set titleold=Thanks\ for\ flying\ Vim
    " Set the text of the icon for this window
  set icon
    " When not empty, text for the icon of this window
  set iconstring=im

" ## USING THE MOUSE
    " List of flags for using the mouse
  set mouse=""
    " Hide the mouse when typing
  set mousehide
    " `extend`, `popup` or `popup_setpos`; what the right mouse button is used for
  set mousemodel=popup
    " Maximum time in msec to recognize a double-click
  set mousetime=500
    " `xterm`, `xterm2`, `dec` or `netterm`; type of mouse
  if !has('nvim')
    set ttym=xterm2
  endif

" ## PRINTING
    " List of items that control the format of :hardcopy output
  set printoptions=paper:a4
    " Name of the printer to be used for :hardcopy
  set printdevice=
    " Expression used to print the PostScript file for :hardcopy
  set printexpr=system('lpr'\ .\ (&printdevice\ ==\ ''\ ?\ ''\ :\ '\ -P'\ .\ &printdevice)\ .\ '\ '\ .\ v:fname_in)\ .\ delete(v:fname_in)\ +\ v:shell_error
    " Name of the font to be used for :hardcopy
  set printfont=FuraCode\ Nerd\ Font
    " Format of the header used for :hardcopy
  set printheader=%<%f%h%m%=Page\ %N
    " Encoding used to print the PostScript file for :hardcopy
  set printencoding=utf-8
    " The CJK character set to be used for CJK output from :hardcopy
  set printmbcharset=
    " List of font names to be used for CJK output from :hardcopy
  set printmbfont=

" ## MESSAGES AND INFO
    " Add 's' flag in 'shortmess' (don't show search message)
  set noterse
    " List of flags to make messages shorter:
    "
    " | flag | meaning when present                                                                                                                                                |
    " | :-   | :-                                                                                                                                                                  |
    " | `f`  | use `(3 of 5)` instead of `(file 3 of 5)`                                                                                                                           |
    " | `i`  | use `[noeol]` instead of `[Incomplete last line]`                                                                                                                   |
    " | `l`  | use `999L, 888C` instead of `999 lines, 888 characters`                                                                                                             |
    " | `m`  | use `[+]` instead of `[Modified]`                                                                                                                                   |
    " | `n`  | use `[New]` instead of `[New File]`                                                                                                                                 |
    " | `r`  | use `[RO]` instead of `[readonly]`                                                                                                                                  |
    " | `w`  | use `[w]` instead of `written` for file write message and `[a]` instead of `appended` for ':w >> file' command                                                      |
    " | `x`  | use `[dos]` instead of `[dos format]`, `[unix]` instead of `[unix format]` and `[mac]` instead of `[mac format]`.                                                   |
    " | `a`  | all of the above abbreviations                                                                                                                                      |
    " | `o`  | overwrite message for writing a file with subsequent message for reading a file (useful for `:wn` or when 'autowrite' on)                                           |
    " | `O`  | message for reading a file overwrites any previous message.  Also for quickfix message (e.g., `:cn`).                                                               |
    " | `s`  | don't give `search hit BOTTOM, continuing at TOP` or `search hit TOP, continuing at BOTTOM` messages                                                                |
    " | `t`  | truncate file message at the start if it is too long to fit on the command-line, `<` will appear in the left most column. Ignored in Ex mode.                       |
    " | `T`  | truncate other messages in the middle if they are too long to fit on the command line.  `...` will appear in the middle. Ignored in Ex mode.                        |
    " | `W`  | don't give `written` or `[w]` when writing a file                                                                                                                   |
    " | `A`  | don't give the `ATTENTION` message when an existing swap file is found.                                                                                             |
    " | `I`  | don't give the intro message when starting Vim `:intro`.                                                                                                            |
    " | `c`  | don't give `ins-completion-menu` messages.  For example, `-- XXX completion (YYY)`, `match 1 of 2`, `The only match`, `Pattern not found`, `Back at original`, etc. |
    " | `q`  | use `recording` instead of `recording @a`                                                                                                                           |
    " | `F`  | don't give the file info when editing a file, like `:silent` was used for the command                                                                               |
  set shortmess=atToO
    " Show (partial) command keys in the status line
  set showcmd
    " Display the current mode in the status line
  set showmode
    " Show cursor position below each window
  set ruler
    " Alternate format to be used for the ruler
  set rulerformat=
    " Threshold for reporting number of changed lines
  set report=2
    " The higher the more messages are given
  set verbose=0
    " File to write messages in
  set verbosefile=~/.local/log/vim.log
    " Pause listings when the screen is full
  set more
    " Start a dialog when a command fails
  set confirm
    " Ring the bell for error messages
  set noerrorbells
    " Use a visual bell instead of beeping
  set novisualbell
    " Do not ring the bell for these reasons
  set belloff=
    " List of preferred languages for finding help
  set helplang=en,fr

" ## SELECTING TEXT
    " `old`, `inclusive` or `exclusive`; how selecting text behaves
  set selection=exclusive
    " `mouse`, `key` and/or `cmd`; when to start Select mode instead of Visual mode
  set selectmode=
    " `startsel` and/or `stopsel`; what special keys can do
  set keymodel=

" ## EDITING TEXT
    " Maximum number of changes that can be undone (global or local to buffer)
  set undolevels=1000
    " Automatically save and restore undo history
  set noundofile
    " List of directories for undo files
    " exec   "set undodir=" . new_rtp .   "/.undo,/tmp/"
    " Maximum number lines to save for undo on a buffer reload
  set undoreload=10000
    " Changes have been made and not written to a file (local to buffer)
  set nomodified
    " Buffer is not to be written (local to buffer)
  set noreadonly
    " Changes to the text are not possible (local to buffer)
  set modifiable
    " Line length above which to break a line (local to buffer)
  set textwidth=79
    " Margin from the right in which to break a line (local to buffer)
  set wrapmargin=120
    " Specifies what <BS>, CTRL-W, etc. can do in Insert mode
  set backspace=eol,start,indent
    " Definition of what comment lines look like (local to buffer)
  set com=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
    " List of flags that tell how automatic formatting works (local to buffer)
    "atcroql2
  set formatoptions=tcroqlj
    " Pattern to recognize a numbered list (local to buffer)
  set formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
    " Expression used for `gq` to format lines (local to buffer)
  set formatexpr=
    " Specifies how Insert mode completion works for CTRL-N and CTRL-P
    " (local to buffer)
  set complete=.,w,b,u,U,t,i,k
    " Whether to use a popup menu for Insert mode completion
  set completeopt=menuone,preview,noinsert,noselect
    " Maximum height of the popup menu
  set pumheight=0
    " User defined function for Insert mode completion (local to buffer)
  set completefunc=
    " List of dictionary files for keyword completion (global or local to buffer)
  set dictionary=en_us,fr_fr
    " List of thesaurus files for keyword completion (global or local to buffer)
  set thesaurus=
    " Adjust case of a keyword completion match (local to buffer)
  set noinfercase
    " Enable entering digraphs with c1 <BS> c2
  set nodigraph
    " The `~` command behaves like an operator
  set notildeop
    " Function called for the `g@`  operator
  set operatorfunc=
    " When inserting a bracket, briefly jump to its match
  set showmatch
    " Tenth of a second to show a match for 'showmatch'
  set matchtime=10
    " List of pairs that match for the `%` command (local to buffer)
  set matchpairs=(:),{:},[:],<:>
    " Use two spaces after '.' when joining a line
  set nojoinspaces
    " `alpha`, `octal` and/or `hex`; number formats recognized for CTRL-A and CTRL-X
    " Commands (local to buffer)
  set nrformats=bin,octal,hex,alpha

" ## TABS AND INDENTING
    " Number of spaces a <Tab> in the text stands for (local to buffer)
  set tabstop=2
    " Number of spaces used for each step of (auto)indent (local to buffer)
  set shiftwidth=2
    " When shifting lines, round the indentation to the nearest multiple of
    " “shiftwidth.”
  set shiftround
    " A <Tab> in an indent inserts 'shiftwidth' spaces
  set smarttab
    " If non-zero, number of spaces to insert for a <Tab> (local to buffer)
  set softtabstop=0
    " Round to 'shiftwidth' for `<<` and `>>`
  set noshiftround
    " Expand <Tab> to spaces in Insert mode (local to buffer)
  set expandtab
    " Automatically set the indent of a new line (local to buffer)
  set autoindent
    " Do clever autoindenting (local to buffer)
  set smartindent
    " Enable specific indenting for C code (local to buffer)
  set nocindent
    " Options for C-indenting (local to buffer)
  set cinoptions=
    " Keys that trigger C-indenting in Insert mode (local to buffer)
  set cinkeys=0{,0},0),:,0#,!^F,o,O,e
    " List of words that cause more C-indent (local to buffer)
  set cinw=if,else,while,do,for,switch
    " Expression used to obtain the indent of a line (local to buffer)
  set indentexpr=GetVimIndent()
    " Keys that trigger indenting with 'indentexpr' in Insert mode (local to buffer)
  set indentkeys=0{,0},:,0#,!^F,o,O,e
    " Copy whitespace for indenting from previous line (local to buffer)
  set copyindent
    " Preserve kind of whitespace when changing indent (local to buffer)
  set preserveindent
    " Enable lisp mode (local to buffer)
  set nolisp

" ## FOLDING
    " Set to display all folds open (local to window)
  set foldenable
    " Folds with a level higher than this number will be closed (local to window)
  set foldlevel=0
    " Value for 'foldlevel' when starting to edit a file
  set foldlevelstart=-1
    " Width of the column used to indicate folds (local to window)
  set foldcolumn=3
    " Expression used to display the text of a closed fold (local to window)
  set foldtext=foldtext()
    " Set to `all` to close a fold when the cursor leaves it
  set foldclose=all
    " Specifies for which commands a fold will be opened
  set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
    " Minimum number of screen lines for a fold to be closed (local to window)
  set foldminlines=0
    " Template for comments; used to put the marker in
    " TODO: Set aufiletype
  set commentstring=/*%s*/
    " Folding type: `manual`, `indent`, `expr`, `marker` or `syntax`
    " (local to window)
  set foldmethod=indent
    " Expression used when 'foldmethod' is `expr` (local to window)
  set foldexpr=0
    " Used to ignore lines when 'foldmethod' is `indent` (local to window)
  set foldignore=
    " Markers used when 'foldmethod' is `marker` (local to window)
  set foldmarker=[[[,]]]
    " Maximum fold depth for when 'foldmethod' is `indent` or `syntax`
    " (local to window)
  set foldnestmax=10

" ## DIFF MODE
    " Use diff mode for the current window (local to window)
  set nodiff
    " Options for using diff mode
  set diffopt=filler,vertical
    " Expression used to obtain a diff file
  set diffexpr=
    " Expression used to patch a file
  set patchexpr=

" ## MAPPING
    " Maximum depth of mapping
  set maxmapdepth=1000
    " Recognize mappings in mapped keys
  set remap
    " Allow timing out halfway into a mapping
  set timeout
    " Allow timing out halfway into a key code
  set nottimeout
    " Time in msec for 'timeout'
  set timeoutlen=1000
    " Time in msec for 'ttimeout'
  set ttimeoutlen=-1

" ## READING AND WRITING FILES
    " Enable using settings from modelines when reading a file (local to buffer)
  set modeline
    " Number of lines to check for modelines
  set modelines=5
    " Binary file editing (local to buffer)
  set nobinary
    " Last line in the file has an end-of-line (local to buffer)
  set noendofline
    " Fixes missing end-of-line at end of text file (local to buffer)
  set fixendofline
    " Prepend a Byte Order Mark to the file (local to buffer)
  set nobomb
    " End-of-line format: `dos`, `unix` or `mac` (local to buffer)
  set fileformat=unix
    " List of file formats to look for when editing a file
  set fileformats=unix,dos,mac
    " Writing files is allowed
  set write
    " Write a backup file before overwriting a file
  set writebackup
    " Keep a backup after overwriting a file
  set nobackup
    " Patterns that specify for which files a backup is not made
  set backupskip=/tmp/*
    " Whether to make the backup as a copy or rename the existing file
    " (global or local to buffer)
  set backupcopy=auto
    " List of directories to put backup files in
  exec 'set backupdir=/tmp/'
    " File name extension for the backup file
  set backupext=~
    " Automatically write a file when leaving a modified buffer
  set noautowrite
    " As 'autowrite', but works with more commands
  set noautowriteall
    " Always write without asking for confirmation
  set nowriteany
    " Automatically read a file when it was modified outside of Vim
    " (global or local to buffer)
  set autoread
    " Keep oldest version of a file; specifies file name extension
  set patchmode=
    " Forcibly sync the file to disk after writing it
  set fsync
    " Use 8.3 file names (local to buffer)
  if !has('nvim')
    set noshortname
  endif
    " Encryption method for file writing: zip or blowfish (local to buffer)
  if !has('nvim')
    set cryptmethod=zip
  endif

" ## THE SWAP FILE
    " List of directories for the swap file
  set directory=~/.config/vim/.swp/,/tmp/
    " Use a swap file for this buffer (local to buffer)
  set swapfile
    " `sync`, `fsync` or empty; how to flush a swap file to disk
  if !has('nvim')
    set swapsync=fsync
  endif
    " Number of characters typed to cause a swap file update
  set updatecount=200
    " Time in msec after which the swap file will be updated
  set updatetime=5000
    " Maximum amount of memory in Kbyte used for one buffer
  if !has('nvim')
    set maxmem=8150012
  endif
    " Maximum amount of memory in Kbyte used for all buffers
  if !has('nvim')
    set maxmemtot=8150012
  endif

" ## COMMAND LINE EDITING
    " How many command lines are remembered
  set history=10000
    " Key that triggers command-line expansion
  set wildchar=9
    " Like 'wildchar' but can also be used in a mapping
  set wildcharm=0
    " Specifies how command line completion works
  set wildmode=full
    " List of file name extensions that have a lower priority
  set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.obj
    " List of file name extensions added when searching for a file (local to buffer)
  set suffixesadd=
    " List of patterns to ignore files for file name completion
  set wildignore=*.o,*~,*.pyc,*.aux,*.sw*
    " Ignore case when using file names
  set fileignorecase
    " Ignore case when completing file names
  set wildignorecase
    " Command-line completion shows a list of matches
  set wildmenu
    " Key used to open the command-line window
  set cedit=<C-F>
    " Height of the command-line window
  set cmdwinheight=10

" ## EXECUTING EXTERNAL COMMANDS
    " Character(s) to enclose a shell command in
  set shellquote=
    " Like 'shellquote' but include the redirection
  set shellxquote=
    " Characters to escape when 'shellxquote' is (
  set shellxescape=
    " Argument for 'shell' to execute a command
  set shellcmdflag=-c
    " Used to redirect command output to a file
  set shellredir=>%s\ 2>&1
    " Use a temp file for shell commands instead of using a pipe
  set shelltemp
    " Program used for `=` command (global or local to buffer)
  set equalprg=
    " Program used to format lines with `gq` command
  set formatprg=
    " Warn when using a shell command and a buffer has changes
  set warn

" ## RUNNING MAKE AND JUMPING TO ERRORS
    " Name of the file that contains error messages
  set errorfile=errors.err
    " Program used for the `:make` command (global or local to buffer)
  set makeprg=make
    " String used to put the output of `:make` in the error file
  set shellpipe=2>&1\|\ tee
    " Name of the errorfile for the 'makeprg' command
  set makeef=
    " Program used for the `:grep` command (global or local to buffer)
  set grepprg=grep\ -n\ $*\ /dev/null
    " List of formats for output of 'grepprg'
  set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m
    " Encoding of the `:make` and `:grep` output (global or local to buffer)
  set makeencoding=utf-8

" ## LANGUAGE SPECIFIC
    " Specifies the characters in a file name
  set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=
    " Specifies the characters in an identifier
  set isident=@,48-57,_,192-255
    " Specifies the characters in a keyword (local to buffer)
  set iskeyword=@,48-57,_,192-255,#
    " Specifies printable characters
  set isprint=@,161-255
    " Specifies escape characters in a string (local to buffer)
  set quoteescape=\\
    " Display the buffer right-to-left (local to window)
  set norightleft
    " When to edit the command-line right-to-left (local to window)
  set rightleftcmd=search
    " Insert characters backwards
  set norevins
    " Allow CTRL-_ in Insert and Command-line mode to toggle 'revins'
  set noallowrevins
    " The ASCII code for the first letter of the Hebrew alphabet
  set aleph=224
    " Use Hebrew keyboard mapping
  set nohkmap
    " Use phonetic Hebrew keyboard mapping
  set nohkmapp
    " Use Farsi as the second language when 'revins' is set
  if !has('nvim')
    set noaltkeymap
  endif
    " Use Farsi keyboard mapping
  if !has('nvim')
    set nofkmap
  endif
    " Prepare for editing Arabic text (local to window)
  set noarabic
    " Perform shaping of Arabic characters
  set arabicshape
    " Terminal will perform bidi handling
  set notermbidi
    " Name of a keyboard mapping
  set keymap=
    " List of characters that are translated in Normal mode
  set langmap=
    " Apply 'langmap' to mapped characters
  set langremap
    " In Insert mode (local to window) :
    "
    " * 1: use :lmap;
    " * 2: use IM;
    " * 0: neither
  set iminsert=0
    " Input method style, 0: on-the-spot, 1: over-the-spot
  if !has('nvim')
    set imstyle=0
  endif
    " Entering a search pattern: 1: use :lmap; 2: use IM; 0: neither
    " (local to window)
  set imsearch=-1

" ## MULTI-BYTE CHARACTERS
    " Character encoding used in Vim: `latin1`, `utf-8` `euc-jp`, `big5`, etc.
  " set encoding=utf-8
    " Character encoding for the current file (local to buffer)
  set fileencoding=utf-8
    " Automatically detected character encodings
  set fileencodings=utf-8,default,ucs-bom,latin1
    " Character encoding used by the terminal
  set termencoding=utf-8
    " Expression used for character encoding conversion
  set charconvert=
    " Delete combining (composing) characters on their own
  set nodelcombine
    " Maximum number of combining (composing) characters displayed
  set maxcombine=2
    " Width of ambiguous width characters
  set ambiwidth=single
    " Emoji characters are full width
  set emoji

" ## VARIOUS
    " When to use virtual editing: `block`, `insert` and/or `all`
  set virtualedit=block
    " List of autocommand events which are to be ignored
  set eventignore=
    " Load plugin scripts when starting up
  set loadplugins
    " Enable reading .vim/.exrc/.gvimrc in the current directory
  set noexrc
    " Safer working with script files in the current directory
  set nosecure
    " Use the `g` flag for `:substitute`
  set nogdefault
    " `g` and `c` flags of `:substitute` toggle
  set noedcompatible
    " Maximum depth of function calls
  set maxfuncdepth=100
    " List of words that specifies what to put in a session file
  set sessionoptions=buffers,curdir,folds,tabpages,unix,winpos,winsize,help
    " List of words that specifies what to save for :mkview
  set viewoptions=folds,options,cursor,curdir
    " Directory where to store files with :mkview
  exe 'set viewdir=' . new_rtp . '/.view'
    " List that specifies what to write in the viminfo file
  set viminfo="NONE"
    " File name used for the viminfo file
  set viminfofile=
    " What happens with a buffer when it's no longer in a window (local to buffer)
  set bufhidden=
    " ``, `nofile`, `nowrite` or `quickfix`: type of buffer (local to buffer)
  set buftype=
    " Whether the buffer shows up in the buffer list (local to buffer)
  set buflisted
    " Set to `msg` to see all error messages
  set debug=
    " Whether to show the signcolumn (local to window)
  set signcolumn=auto
    " Whether to use Python 2 or 3
  set pyxversion=3

" ## NVim Specific
  if has('nvim')
    set inccommand=nosplit
    set winblend=10
    set pumblend=10
  endif

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
