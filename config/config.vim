" # Description
  " Configuration file hosting basic configuration, function or mapping.
  " For plugins configuration, or mapping, see the folder `plugins`

" ## Functions
  " Set of basic usefull function found on the internet.

func! DeleteTrailingWS()
  " Delete trailing white space on save
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

function! VisualSelection(direction) range
  " Apply specific process to the visual selection
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'vg'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

function! HasPaste()
  " Returns PASTE MODE if paste mode is enabled
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

function! <SID>BufcloseCloseIt()
  " Don't close window, when deleting a buffer
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>CallAntidote()
  " Call Antidote to spellcheck current buffer
  :w
  if has('macunix')
    call system("'/Applications/Antidote/Antidote 10.app/Contents/MacOS/Antidote 10' -o Correcteur -f " . expand('%:p'))
  else
    call system("Antidote10 -o Correcteur -f " . expand('%:p'))
  endif
endfunction
command! Antidote call <SID>CallAntidote()

function! Hostname(hostname)
  " Return true if on a particulare hostname
  return match($HOST, a:hostname) >= 0
endfunction

" # Mapping
  " Set of basic mapping or remmapping of key.

" ## Global Remaping
  " Key mapping apply whatever the current mode (i.e. either INSERT, VISUAL,...)

" ### Leader Based Mapping
  " Key mapping based from the leader key

  " With a map leader it's possible to do extra key combinations like <leader>w
  " saves the current file
let g:mapleader = " "
  " Fast saving
nmap <leader>w :w!<cr>

" ### Moving Around, Tabs, Windows and Buffers
  " Key mapping related to movement

  " Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
  " Smart way to move between windows, use Ctrl+<DIRECTION> to change active one
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
  " Smart way to move between tabs, use Shift+<Direction> to change active one
map <S-h> :tabprevious<CR>
map <S-l> :tabprevious<CR>
  " Close tab with Shift+w
map <S-c> :tabclose<CR>
  " Create new tab
map <S-T> :tabnew<CR>
  " Use <Esc> to leave Insert mode in term
tnoremap <Esc> <C-\><C-n>
  " Remap VIM 0 to first non-blank character
map 0 ^
  " Map <leader>c to close buffer
nnoremap <leader>c :Bclose<CR>

" ## Visual Mode Related Mapping
  " Key mapping apply when in VISUAL mode

  " Visual mode pressing * or # searches for the current selection
  " Super useful! From an idea by Michael Naumann
vnoremap <silent> # :call VisualSelection('f')<CR>
  " Press esc to clear the last highlight search
nnoremap <esc> :noh<return><esc>

" # Colorscheme
  " Color scheme related configuration

  " Use of true colors in terminal which support it
  " Credit joshdick
  " Based on Vim patch 7.4.1770 (`guicolors` option), see:
  " - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
  " - https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (exists("+termguicolors"))
  " set Vim-specific sequences for RGB colors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:markdown_fenced_languages = [
  \ 'vim',
  \ 'terraform',
  \ 'help',
  \ 'bash=sh',
  \ 'zsh=sh',
  \ 'sh',
  \ 'css',
  \ 'json',
  \ 'html',
  \ 'python',
  \ 'yaml',
  \ 'json',
  \ 'jsonc',
\]

let g:python3_host_prog=substitute(system("which -a python3 | tail -n1"), "\n", '', 'g')

  " Show vim identifier of below word, useful when creating a colorscheme
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

hi ActiveWindow ctermbg=darkgray ctermfg=gray guibg=#333333
set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------