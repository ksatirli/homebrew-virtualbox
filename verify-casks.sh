#!/usr/bin/env bash

set -e

# shellcheck source=../homebrew-helpers/FUNCTIONS.sh
. "../homebrew-helpers/FUNCTIONS.sh"

case "${1}" in
  virtualbox)

    for VERSION in "${VIRTUALBOX_6XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="virtualbox"
      PRODUCT_VERSION="${VERSION%%,*}" # split on comma and use first part

      # TODO: implement a cleaner way of building `PRODUCT_VERSION_CLEAN`
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION/_/-}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION_CLEAN/BETA/beta}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION_CLEAN/RC/rc}"

      verify_cask
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
