#!/usr/bin/env bash

prev_line_code="False"
code=""

parse_file(){
  # """Generate markdown documentation from file
  #
  # Read file line by line and depending on its content (comment or code line)
  # echo line converted to markdown.
  #
  # Arguments:
  #   $1: string, path to the file to parse.
  #
  # Output:
  #   Content of file converted to markdown.
  #
  # """

  file=$1
  OLD_IFS=${IFS}
  IFS=
  while read i_line
  do
    if echo "${i_line}" | grep -e "^[ ]*\"" &> /dev/null
    then
      if [[ -n "${code}" ]]
      then
        echo -e "\n\`\`\`vim"
        echo -e "${code}"
        echo -e "\`\`\`\n"
        code=""
      fi
      if ! echo "${i_line}" | grep -E "^\" (vim|VIM|---)" &> /dev/null
      then
        echo -e "${i_line}" | sed -e 's|^[ ]*\"[ ]*||g'
      fi
    elif [[ ${i_line} =~ ^$ ]]
    then
      echo -e "${i_line}"
    elif ! [[ ${i_line} =~ ^#\! ]]
    then
      if [[ -z "${code}" ]]
      then
        code+="$(echo -e "${i_line#  *}")"
      else
        code+="\n$(echo -e "${i_line#  *}")"
      fi
    fi
  done <<<"$(cat "${file}")"
IFS=${OLD_IFS}
}



main()
{
  parse_file "/home/rdeville/.config/vim_dev/config/options.vim"
}

main