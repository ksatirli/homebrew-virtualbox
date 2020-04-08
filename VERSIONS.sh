#!/usr/bin/env bash

# shellcheck disable=SC2034

########################################################################################################################
#     VIRTUALBOX                                                                                                       #
########################################################################################################################

# released between 2018-12 and 2020-02
VIRTUALBOX_60X=("6.0.0_BETA1,125994" "6.0.0_BETA2,126642" "6.0.0_BETA3,127054" "6.0.0_RC1,127378" "6.0.0,127566" "6.0.2,128162" "6.0.4,128413" "6.0.6,130049" "6.0.8,130520" "6.0.10,132072" "6.0.12,133076" "6.0.14,133895" "6.0.16,135675" "6.0.18,136238")

# released between 2019-11 and 2020-04
VIRTUALBOX_61X=("6.1.0_BETA1,133315" "6.1.0_BETA2,134221" "6.1.0_RC1,134891" "6.1.0,135406" "6.1.2,135662" "6.1.4,136177")

VIRTUALBOX_6XX=("${VIRTUALBOX_60X[@]}" "${VIRTUALBOX_61X[@]}")