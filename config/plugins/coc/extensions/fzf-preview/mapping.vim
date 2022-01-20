" # Description

" File storing mapping options and method for the plugin.

" # Mapping

nnoremap <silent> <leader>p :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> <leader>b :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> <leader>B :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> <leader>o :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap          <leader>g :<C-u>CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--preview-window=hidden<Space>
