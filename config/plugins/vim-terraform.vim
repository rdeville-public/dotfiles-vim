" # Description
  " File storing configuration options and method for the plugin `vim-terraform`.

" ## Configuration
  " Set of configuration options for the plugin. I only set variable which
  " differ from the default configuration.

  " Allow vim-terraform to automatically format *.tf and *.tfvars files with
  " terraform fmt. You can also do this manually with the `:TerraformFmt`
  " command.
let g:terraform_fmt_on_save = 1

  " Allow vim-terraform to automatically fold (hide until unfolded) sections of
  " terraform code.
let g:terraform_fold_sections = 1

  " If plugin Tabularize is installed
if has_key(plugs, "Tabularize")
  " Allow vim-terraform to align settings automatically with Tabularize.
let g:hcl_align = 1
  " Allow vim-terraform to align settings automatically with Tabularize.
let g:terraform_align = 1
endif

  " Allow vim-terraform to automatically fold (hide until unfolded) sections of
  " hcl code.
let g:hcl_fold_sections = 1

" vim: fdm=indent:fdi=
