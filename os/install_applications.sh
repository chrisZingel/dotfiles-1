#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")" && source "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    declare -r OS="$(get_os)"

    if [ "$OS" == "osx" ]; then
        ./os_x/install_applications.sh
        ./os_x/change_default_bash_version.sh
    elif [ "$OS" == "ubuntu" ]; then
        ./ubuntu/install_applications.sh
    fi

}

main
