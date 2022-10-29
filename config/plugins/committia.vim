" # Description
  " File storing configuration options and method for the plugin `committia`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " You can hook on opening the windows. Available hooks are:
  " edit_open  : When opening a commit message window, this hook is called from
  "              the window.
  " diff_open  : When opening a diff window, this hook is called from the window.
  " status_open: When opening a status window, this hook is called from the
  "              window. Please note that this hook is not called on
  "              single-column mode since it does not have a dedicated window
  "              for status.
let g:committia_hooks = {}

function! g:committia_hooks.edit_open(info)
    " Additional settings
    silent setlocal spell spelllang=en_us

    " Scroll the diff window from normal or insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up)
    nmap <buffer><C-n> <Plug>(committia-scroll-diff-down)
    nmap <buffer><C-p> <Plug>(committia-scroll-diff-up)

    " Map <C-d> and <C-u>
    imap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)
    nmap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
    nmap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)

endfunction
