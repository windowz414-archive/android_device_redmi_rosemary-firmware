#
# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2022 Beru Hinode
#
# SPDX-License-Identifier: Apache-2.0
# SPDX-License-Identifier: GPL-2.0-only
#

FIRMWARE_IMAGES := $(wildcard vendor/redmi/rosemary-firmware/images/*)

AB_OTA_PARTITIONS += \
    $(foreach f, $(notdir $(FIRMWARE_IMAGES)), $(basename $(f)))
