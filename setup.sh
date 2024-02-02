#!/usr/bin/env bash
# """Setup script to install symlinks if specified
# """

# shellcheck disable=SC2034
SCRIPTPATH="$( cd -- "$(dirname "$0")" &>/dev/null || exit 1 ; pwd -P )"
SCRIPTNAME="$(basename "$0")"

init_setup(){
  local setup_file="/tmp/_setup.sh"
  if ping -q -c 1 -W 1 framagit.org &> /dev/null
  then
    # shellcheck disable=SC1090
    source <(curl -s https://framagit.org/-/snippets/7207/raw/main/_get_setup.sh)
  elif [[ -f "${setup_file}" ]]
  then
    echo -e "\e[1;32m[INFO]\e[0m\e[32m ${SCRIPTNAME}: Not able to ping \e[1;31mframagit.org, will source existing **${setup_file}**\e[0m"
    # shellcheck disable=SC1090
    source <(cat "${setup_file}")
  else
    echo -e "\e[1;31m[ERROR]\e[0m\e[31m ${SCRIPTNAME}: Not able to ping \e[1;31mframagit.org\e[0m"
    echo -e "\e[1;31m[ERROR]\e[0m\e[31m ${SCRIPTNAME}: And setup lib file ${setup_file} does not exists.\e[0m"
    echo -e "\e[1;31m[ERROR]\e[0m\e[31m ${SCRIPTNAME}: Logger not available, script will now exit\e[0m"
    exit 1
  fi
}

_install_node_dep(){
  _log "INFO" "${SCRIPTNAME}: Installing node dependencies for plugins"
  npm install --silent --global "${NODE_DEPENDENCIES[*]}"
}


main(){
  local DEBUG_LEVEL="${SETUP_DEBUG_LEVEL:-"INFO"}"
  init_setup
  setup "LINKS" "PKGS" "CRONS"
}

DATA_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}"
CONFIG_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}"

declare -A LINKS
# LINKS["<SOURCE>"]="<DEST>"
LINKS["${HOME}/.vimrc"]="${SCRIPTPATH}/vimrc"
LINKS["${XDG_CONFIG_HOME}/nvim"]="${SCRIPTPATH}"
LINKS["${XDG_CONFIG_HOME}/vim"]="${SCRIPTPATH}"

declare -A CRONS
# CRONS["<PATH|CMD>"]="<RECURRENCE>"

PKGS=(
#  "<PKGS_NAME>"
  "hadolint"
  "golangci-lint"
  "golangci-lint-langserver"
  "go"
  "node"
  "fzf"
  "texlab"
  "terraform"
  "terraform-ls"
  "vim-vint"
  "pylint"
  "python3.11-flake8"
  "shellcheck"
  "yamllint"
  "mypy"
  "proselint"
  "yapf"
  "isort"
  "black"
  "python3.11-jedi"
  "doq"
  "dockerfile-language-server-nodejs"
  "eslint"
  "markdownlint-cli"
  "stylelint"
  "shfmt"
  "lua5.4-luacheck"
  "revive"
  "write-good"
)

# Package not yet found on Nix
NODE_DEPENDENCIES=(
  "diagnostic-languageserver"
  "standard"
  "lua-fmt"
  "prettier"
  "prettier-eslint"
  "vim-language-server"
  "bash-language-server"
)

main "$@"

# vim: ft=sh