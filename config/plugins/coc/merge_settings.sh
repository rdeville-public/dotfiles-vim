#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main(){
  setting="${SCRIPT_DIR}/coc-settings.json"
  setting_base="${SCRIPT_DIR}/coc-settings.base.json"
  setting_merge="${setting/json/merge.json}"
  setting_tmp="${setting/json/tmp.json}"

  mv "${setting}" "${setting}.bak"
  cp "${setting_base}" "${setting_tmp}"
  cp "${setting_base}" "${setting_merge}"

  for i_ext in "${SCRIPT_DIR}"/extensions/*/
  do
    setting="${i_ext}coc-settings.json"
    if [[ -f "${setting}" ]]
    then
      jq -s '.[0] * .[1]' "${setting_merge}" "${setting}" > "${setting_tmp}"
      cp "${setting_tmp}" "${setting_merge}"
    fi
  done

  cp "${setting_merge}" "${setting}"

  rm "${setting_merge}" "${setting_tmp}"
}

main "$@"
