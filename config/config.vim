" # Description

" Configuration file hosting basic configuration, function or mapping.
" For plugins configuration, or mapping, see the folder `plugins`

" # Functions

" Set of basic usefull function found on the internet.

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

" Apply specific process to the visual selection
function! VisualSelection(direction) range
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

" Returns PASTE MODE if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
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

" Call Antidote to spellcheck current buffer
command! Antidote call <SID>CallAntidote()

function! <SID>CallAntidote()
  :w
  call system("Antidote10 -o Correcteur -f " . expand('%:p'))
endfunction

" # Mapping

" Set of basic mapping or remmapping of key.

" ## GLOBAL REMAPING

" Key mapping apply whatever the current mode (i.e. either INSERT, VISUAL,...)

" ### LEADER BASED MAPPING

" Key mapping based from the leader key

" Fast saving
nmap <leader>w :w!<cr>

" With a map leader it's possible to do extra key combinations like <leader>w
" saves the current file
let g:mapleader = " "

" ### MOVING AROUND, TABS, WINDOWS AND BUFFERS

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
map <S-w> :tabclose<CR>
" Create new tab
map <C-T> :tabnew<CR>

" Use <Esc> to leave Insert mode in term
tnoremap <Esc> <C-\><C-n>

" Remap VIM 0 to first non-blank character
map 0 ^

" Map <leader>c to close buffer
nnoremap <leader>c :Bclose<CR>

" ## VISUAL MODE RELATED MAPPING

" Key mapping apply when in VISUAL mode

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> # :call VisualSelection('f')<CR>


" # COLORSCHEME

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

let g:python3_host_prog = "/usr/bin/python3"

let g:markdown_fenced_languages = [
      \ 'vim',
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
      \]

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Press esc to clear the last highlight search

nnoremap <esc> :noh<return><esc>

nnoremap <leader>ww :VimwikiIndex<CR>

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
