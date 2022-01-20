" # Description

" File storing mapping options and method for the plugin.

" # Mapping

" Better scroll using <C-j> and <C-k> for suggestion/snippets
inoremap <expr> <c-j>
   \ pumvisible() ? "\<c-n>" :
   \ coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetNext', [])<cr>" :
   \ "\<c-j>"
inoremap <expr> <c-k>
   \ pumvisible() ? "\<c-p>" :
   \ coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" :
   \ "\<c-k>"

" Use `<leader>j` and `<leader>k` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>j <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>k <Plug>(coc-diagnostic-next)

" Open diagnostics list
nnoremap <leader>d :CocDiagnostics<CR>

" ------------------------------------------------------------------------------
" VIM MODELINE
" vim: fdm=indent
" ------------------------------------------------------------------------------
