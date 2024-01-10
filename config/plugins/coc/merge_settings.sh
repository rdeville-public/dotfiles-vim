#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main(){
  setting="${SCRIPT_DIR}/coc-settings.json"

  if [[ -f "${setting}" ]]
  then
    echo "Backup old coc-settings.json"
    mv "${setting}" "${setting}.bak"
  fi

  echo "{" >> "${setting}"
  for i_ext in "${SCRIPT_DIR}"/*.json
  do
    if [[ "${i_ext}" != "${setting}" ]]
    then
      echo "${i_ext}"
      echo "$(sed -e "/^{/d" -e "/^}/d" -e "/.*vim: ft=.*/d" "${i_ext}")," >> "${setting}"
    fi
  done
  if [[ "$(uname)" == "Darwin" ]]
  then
    sed -i "" "$ s/.$//" "${setting}"
  else
    sed -i "$ s/.$//" "${setting}"
  fi
  echo "}" >> "${setting}"
  echo "// vim: ft=jsonc" >> "${setting}"
}

main "$@"

# vim: ft=sh