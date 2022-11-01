#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" || exit 1 >/dev/null 2>&1 ; pwd -P )"

declare -A NODES=(
  ["${SCRIPTPATH}/vimrc"]="${HOME}/.vimrc"
  ["${SCRIPTPATH}"]="${HOME}/.config/nvim"
  ["${SCRIPTPATH}"]="${HOME}/.config/vim"
)

PACKAGE_DEPENDENCIES=(
  "hadolint"
  "golangci-lint"
  "luarocks"
  "node"
  "terraform"
  "go"
  "fzf"
  "texlab"
  "terraform-ls"
)

PYTHON_DEPENDENCIES=(
  "vim-vint"
  "pylint"
  "flake8"
  "shellcheck-py"
  "yamllint"
  "mypy"
  "proselint"
  "yapf"
  "isort"
  "black"
  "jedi"
  "doq"
)

NODE_DEPENDENCIES=(
  "nginx-language-server"
  "dockerfile-language-server-nodejs"
  "diagnostic-languageserver"
  "eslint"
  "write-good"
  "markdownlint"
  "stylelint"
  "standard"
  "lua-fmt"
  "prettier"
  "prettier-eslint"
  "vim-language-server"
  "bash-language-server"
)

LUAROCKS_DEPENDENCIES=(
  "luacheck"
)

declare -A GO_DEPENDENCIES=(
  ["revive"]="github.com/mgechev/revive@latest"
  ["shfmt"]="mvdan.cc/sh/v3/cmd/shfmt@latest"
)

# shellcheck disable=SC2034
#   - SC2034: var appears unused, Verify use (or export if used externally)
vim_log()
{
  # """Print debug message in colors depending on message severity on stderr
  #
  # Echo colored log depending on user provided message severity. Message
  # severity are associated to following color output:
  #
  #   - `DEBUG` print in the fifth colors of the terminal (usually magenta)
  #   - `INFO` print in the second colors of the terminal (usually green)
  #   - `WARNING` print in the third colors of the terminal (usually yellow)
  #   - `ERROR` print in the third colors of the terminal (usually red)
  #
  # If no message severity is provided, severity will automatically be set to
  # INFO.
  #
  # Globals:
  #   None
  #
  # Arguments:
  #   $1: string, message severity or message content
  #   $@: string, message content
  #
  # Output:
  #   Log informations colored
  #
  # Returns:
  #   None
  #
  # """

  # Store color prefixes in variable to ease their use.
  # Base on only 8 colors to ensure portability of color when in tty
  local e_normal="\e[0m"     # Normal (usually white fg & transparent bg)
  local e_bold="\e[1m"       # Bold
  local e_underline="\e[4m"  # Underline
  local e_debug="\e[0;34m"   # Fifth term color (usually magenta fg)
  local e_info="\e[0;32m"    # Second term color (usually green fg)
  local e_warning="\e[0;33m" # Third term color (usually yellow fg)
  local e_error="\e[0;31m"   # First term color (usually red fg)

  # Store preformated colored prefix for log message
  local error="${e_bold}${e_error}[ERROR]${e_normal}${e_error}"
  local warning="${e_bold}${e_warning}[WARNING]${e_normal}${e_warning}"
  local info="${e_bold}${e_info}[INFO]${e_normal}${e_info}"
  local debug="${e_bold}${e_debug}[INFO]${e_normal}${e_debug}"

  local color_output="e_error"
  local msg_severity
  local msg

  # Not using ${1^^} to ensure portability when using ZSH
  msg_severity=$(echo "$1" | tr '[:upper:]' '[:lower:]')

  if [[ "${msg_severity}" =~ ^(error|time|warning|info|debug)$ ]]
  then
    # Shift arguments by one such that $@ start from the second arguments
    shift
    # Place the content of variable which name is defined by ${msg_severity}
    # For instance, if `msg_severity` is INFO, then `prefix` will have the same
    # value as variable `info`.
    prefix="${!msg_severity}"
    color_output="e_${msg_severity}"
  else
    prefix="${info}"
  fi
  color_output="${!color_output}"

  # Concat all remaining arguments in the message content and apply markdown
  # like syntax.
  msg_content=$(echo "$*" | \
    sed -e "s/ \*\*/ \\${e_bold}/g" \
        -e "s/\*\*\./\\${e_normal}\\${color_output}./g" \
        -e "s/\*\*,/\\${e_normal}\\${color_output},/g" \
        -e "s/\*\* /\\${e_normal}\\${color_output} /g" \
        -e "s/ \_\_/ \\${e_underline}/g" \
        -e "s/\_\_\./\\${e_normal}\\${color_output}./g" \
        -e "s/\_\_ /\\${e_normal}\\${color_output} /g")
  msg="${prefix} ${msg_content}${e_normal}"

  # Print message
  echo -e "${msg}" 1>&2
}

test_command(){
  local cmd=$1
  if ! command -v "${cmd}" &> /dev/null
  then
    vim_log "ERROR" "Command **'${cmd}'** is not installed."
    vim_log "ERROR" "Please install it first and run **bootstrap.sh** again."
    return 1
  fi
}

install_package_dep(){
  brew_install(){
    case $1 in
      terraform-ls)
        brew install --quiet "hashicorp/tap/$1"
      ;;
      *)
        brew install --quiet "$1"
    esac
  }

  if [[ "$(uname)" == "Darwin" ]]
  then
    vim_log "INFO" "Installing brew packages dependency."
    brew_install "${PACKAGE_DEPENDENCIES[@]}"
  else
    vim_log "ERROR" "Please code install method for package dependencies for this OS."
  fi

}

install_node_dep(){
  vim_log "INFO" "Installing node dependencies for plugins"
  npm install --silent --global "${NODE_DEPENDENCIES[*]}"
}

install_python_dep(){
  if [[ -n ${VIRTUAL_ENV} ]]
  then
    vim_log "ERROR" "Please deactivate virtualenv to run script bootstrap.sh "
    return 1
  fi
  vim_log "INFO" "Installing python dependencies for plugins"
  pip3 install --quiet --user "${PYTHON_DEPENDENCIES[@]}"
}

install_go_dep(){
  vim_log "INFO" "Installing go dependencies for plugins"
  for i_dep in "${GO_DEPENDENCIES[@]}"
  do
    go install "${i_dep}" &> /dev/null
  done
}

install_lua_dep(){
  vim_log "INFO" "Installing lua dependencies for plugins"
  for i_dep in "${LUAROCKS_DEPENDENCIES[@]}"
  do
    luarocks install "${i_dep}" &> /dev/null
  done
}

main(){
  cd "${SCRIPTPATH}" || exit 1

  if git remote -v | grep -q 'rdeville.private'
  then
    for i_node in "${!NODES[@]}"
    do
      src="${i_node}"
      dest="${NODES[${i_node}]}"

      if ! [[ -d "$(dirname "${dest}")" ]]
      then
        mkdir -p "$(dirname "${dest}")"
      fi

      if [[ -e "${dest}" ]] && ! [[ -L "${dest}" ]]
      then
        vim_log "ERROR" "Bootstrap: Something already exists for **${dest/${HOME}/\~}**."
      elif ! [[ -L "${dest}" ]]
      then
        vim_log "INFO" "Bootstrap: Create symlink to **${dest/${HOME}/\~}**."
        ln -s "${src}" "${dest}"
      else
        vim_log "INFO" "Bootstrap: Symlink to **${dest/${HOME}/\~}** already exists."
      fi
    done

    if [[ -z "${GOPATH}" ]]
    then
      GOPATH="${HOME}/.local/share/go/"
    fi
    if ! [[ -d "${GOPATH}" ]]
    then
      mkdir -p "${GOPATH}"
    fi
    install_package_dep
    install_python_dep
    install_node_dep
    install_go_dep
    install_lua_dep
  fi
}

main "$@"

# vim: fdi=
