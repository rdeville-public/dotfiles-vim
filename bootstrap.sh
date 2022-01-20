#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

declare -A NODES

NODES["${SCRIPTPATH}/vimrc"]="${HOME}/.vimrc"
NODES["${SCRIPTPATH}"]="${XDG_CONFIG_HOME:-"${HOME}/.config"}/nvim"

source "${SCRIPTPATH}/lib/_vim_log.sh"

for i_node in "${!NODES[@]}"
do
  src="${i_node}"
  dest="${NODES[${i_node}]}"

  if ! [[ -d "$(dirname "${dest}")" ]]
  then
    mkdir -p "$(dirname "${dest}")"
  fi

  if ! [[ -e "${src}" ]]
  then
    vim_log "WARNING" "Bootstrap: Symlink source **${src/${HOME}/\~}** does not exists."
    vim_log "WARNING" "Bootstrap: Will create symlink anyway as you may setup source later."
  fi

  if ! [[ -L "${dest}" ]]
  then
    vim_log "INFO" "Bootstrap: Create symlink to **${dest/${HOME}/\~}**."
    ln -s "${src}" "${dest}"
  else
    vim_log "INFO" "Bootstrap: Symlink to **${dest/${HOME}/\~}** already exists."
  fi
done
