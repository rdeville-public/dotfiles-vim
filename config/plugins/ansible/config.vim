" When this variable is set, indentation will completely reset (unindent to
" column 0) after two newlines in insert-mode. The normal behavior of YAML is to
" always keep the previous indentation, even across multiple newlines with no
" content.
let g:ansible_unindent_after_newline = 1


" Ansible modules use a key=value format for specifying module-attributes in
" playbooks. This highlights those as specified. This highlight option is also
" used when highlighting key/value pairs in hosts files.
"
" Available flags (bold are defaults):
"
"     a: highlight all instances of key=
"     o: highlight only instances of key= found on newlines
"     d: dim the instances of key= found
"     b: brighten the instances of key= found
"     n: turn this highlight off completely
let g:ansible_attribute_highlight = "ob"

" Ansible modules commonly start with a name: key for self-documentation of
" playbooks. This option enables/changes highlight of this.

" Available flags (this feature is off by default):
"
"     d: dim the instances of name: found
"     b: brighten the instances of name: found
let g:ansible_name_highlight = 'd'

" Note: This option is enabled when set, and disabled when not set.
"
" Highlight the following additional keywords: become become_exe become_flags
" become_method become_user become_pass prompt_l10n debugger always_run
" check_mode diff no_log args tags force_handlers vars vars_files vars_prompt
" delegate_facts delegate_to any_errors_fatal ignore_errors ignore_unreachable
" max_fail_percentage connection hosts port remote_user module_defaults
" environment fact_path gather_facts gather_subset gather_timeout async poll
" throttle timeout order run_once serial strategy.
"
" By default we only highlight: include include_role include_tasks include_vars
" import_role import_playbook import_tasks when changed_when failed_when block
" rescue always notify listen register action local_action post_tasks pre_tasks
" tasks handlers roles collections and loop keywords with_.+, loop,
" loop_control, until, retries, delay. g:ansible_extra_keywords_highlight_group
let g:ansible_extra_keywords_highlight = 1
