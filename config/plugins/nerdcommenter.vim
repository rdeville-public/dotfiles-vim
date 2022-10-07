" # Description
  " File storing configuration options and method for the plugin `nerdcommenter`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " By default the script tries to comment out exactly what is selected in visual
  " mode (v). For example if you select and comment the following c code (using |
  " to represent the visual boundary): >
  "   ```
  "   in|t foo = 3;
  "   int bar =| 9;
  "   int baz = foo + bar;
  "   ```
  " This will result in:
  "   ```
  "   in/*t foo = 3;*/
  "   /*int bar =*/ 9;
  "   int baz = foo + bar;
  "   ```
  " But some people prefer it if the whole lines are commented like:
  "   ```
  "   /*int foo = 3;*/
  "   /*int bar = 9;*/
  "   int baz = foo + bar;
  "   ```
  " If you prefer the second option then stick this line in your vimrc:
  "     let NERDCommentWholeLinesInVMode=1
  " If the filetype you are editing only has no multipart delimiters (for example
  " a shell script) and you hadn't set this option then the above would become
  "   ```
  "   in#t foo = 3;
  "   #int bar = 9;
  "   ```
  " (where # is the comment delimiter) as this is the closest the script can
  " come to commenting out exactly what was selected. If you prefer for whole
  " lines to be commented out when there is no multipart delimiters but the EXACT
  " text that was selected to be commented out if there IS multipart delimiters
  " then stick the following line in your vimrc:
let NERDCommentWholeLinesInVMode = 2

  " Use this option if you have new filetypes you want the script to handle, or if
  " you want to override the default delimiters of a filetype.
  " Example:
  "   ```
  "   let g:NERDCustomDelimiters = {
  "       \ 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
  "       \ 'grondle': { 'left': '{{', 'right': '}}' }
  "   \ }
  "   ```
  " Here we override the delimiter settings for ruby and add FOO/BAR as alternative
  " delimiters. We also add {{ and }} as delimiters for a new filetype called
  " 'grondle'.
"let g:NERDCustomDelimiters = {

  " When uncommenting a line (for a filetype with an alternative commenting style)
  " this option tells the script whether to look for, and remove, comment
  " delimiters of the alternative style.
  "
  " For example, if you are editing a c++ file using // style comments and you go
  " |<Leader>|cu on this line:
  "   ```
  "   /* This is a c++ comment baby! */
  "   ```
  " It will not be uncommented if the NERDRemoveAltComs is set to 0.
let g:NERDRemoveAltComs = 1

  " Some people prefer a space after the left delimiter and before the right
  " delimiter like this: >
  "   ```
  "   /* int foo=2; */
  "   ```
  "   ```
  " as opposed to this: >
  "   ```
  "   /*int foo=2;*/
  "   ```
  " If you want spaces to be added then set NERDSpaceDelims to 1 in your vimrc.
let g:NERDSpaceDelims = 1

  " Some people may want their sexy comments to be like this:
  "   ```
  "   /* Hi There!
  "    * This is a sexy comment
  "    * in c */
  "   ```
  " As opposed to like this:
  "   ```
  "   /*
  "    * Hi There!
  "    * This is a sexy comment
  "    * in c
  "    */
  "   ```
  " If this option is set to 1 then the top style will be used.
let g:NERDCompactSexyComs = 1

  " If you want the NERD commenter to use the alternative delimiters for a
  " specific filetype by default then put a line of this form into your vimrc:
  "   ```
  "   let g:NERDAltDelims_<filetype> = 1
  "   ```
  " Example: java uses // style comments by default, but you want it to default to
  " /* */ style comments instead. You would put this line in your vimrc:
  "   ```
  "   let g:NERDAltDelims_java = 1
  "   ```
  " See |NERDCommenterAltDelims| for switching commenting styles at runtime.
" let g:NERDAltDelims_<filetype> = 1

