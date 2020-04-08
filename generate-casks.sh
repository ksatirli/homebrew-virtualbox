#!/usr/bin/env bash

set -e

# shellcheck source=../homebrew-tools/FUNCTIONS.sh
. "../homebrew-tools/FUNCTIONS.sh"

case "${1}" in
  virtualbox)

    for VERSION in "${VIRTUALBOX_6XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="virtualbox"
      PRODUCT_VERSION="${VERSION%%,*}" # split on comma and use first part
      PRODUCT_BUILD="${VERSION##*,}" # split on comma and use second part

      # TODO: implement a cleaner way of building `PRODUCT_VERSION_CLEAN`
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION/_/-}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION_CLEAN/BETA/beta}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION_CLEAN/RC/rc}"
      PRODUCT_PACKAGE_PATH="VirtualBox-${PRODUCT_VERSION}-${PRODUCT_BUILD}-OSX.dmg "
      PRODUCT_CHECKSUM_URL="https://download.virtualbox.org/virtualbox/${PRODUCT_VERSION}/SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="*${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
