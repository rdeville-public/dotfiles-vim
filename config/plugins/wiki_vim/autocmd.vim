" If you're using a symlink to your script, but your resources are in
" the same directory as the actual script, you'll need to do this:
"   1: Get the absolute path of the script
"   2: Resolve all symbolic links
"   3: Get the folder of the resolved absolute file
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" # Custom Functions
function! GenerateWikiDiaryIndex()
  " If you're using a symlink to your script, but your resources are in
  " the same directory as the actual script, you'll need to do this:
  "   1: Get the absolute path of the script
  "   2: Resolve all symbolic links
  "   3: Get the folder of the resolved absolute file
  let l:start = 0
  let l:end = getline('$')
  let l:file_path = expand("%:p")
  let l:content = system(s:path . "/bin/vimwiki_diary_index " . l:file_path)

  normal! gg_dG
  call setline(1, split(content, '\n'))
endfunction

" command! :WikiDiaryIndex :call GenerateWikiDiaryIndex()

autocmd BufNewFile ~/*/journal/*.md exe ":silent 0r !" . s:path . "/bin/vimwiki_diary_template '%'"
autocmd BufWrite ~/*/journal/index.md :call GenerateWikiDiaryIndex()
