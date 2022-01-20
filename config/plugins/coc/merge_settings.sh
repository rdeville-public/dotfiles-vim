#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SETTING="${SCRIPT_DIR}/coc-settings.json"
SETTING_BASE="${SCRIPT_DIR}/coc-settings.base.json"
SETTING_MERGE="${SETTING/json/merge.json}"
SETTING_TMP="${SETTING/json/tmp.json}"

mv "${SETTING}" "${SETTING}.bak"
cp "${SETTING_BASE}" "${SETTING_TMP}"
cp "${SETTING_BASE}" "${SETTING_MERGE}"

for i_ext in "${SCRIPT_DIR}"/extensions/*/
do
  setting="${i_ext}coc-settings.json"
  echo ${setting}
  if [[ -f "${setting}" ]]
  then
    jq -s '.[0] * .[1]' "${SETTING_MERGE}" "${setting}" > "${SETTING_TMP}"
    cp "${SETTING_TMP}" "${SETTING_MERGE}"
  fi
done

cp "${SETTING_MERGE}" "${SETTING}"

rm "${SETTING_MERGE}" "${SETTING_TMP}"
