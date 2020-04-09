#!/usr/bin/env bash

set -e

# shellcheck source=./VERSIONS.sh
. "./VERSIONS.sh"

# shellcheck source=../homebrew-tools/FUNCTIONS.sh
. "../homebrew-tools/FUNCTIONS.sh"

case "${1}" in
  virtualbox)
    NAME="${1}"

    for PRODUCT_VERSION in "${VIRTUALBOX_6XX[@]}"; do
      VERSION="${PRODUCT_VERSION%%,*}" # split on comma and use first part
      BUILD="${PRODUCT_VERSION##*,}" # split on comma and use second part

      # TODO: implement a cleaner way of building `VERSION_CLEAN`
      VERSION_CLEAN="${VERSION/_/-}"
      VERSION_CLEAN="${VERSION_CLEAN/BETA/beta}"
      VERSION_CLEAN="${VERSION_CLEAN/RC/rc}"

      verify_cask
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
