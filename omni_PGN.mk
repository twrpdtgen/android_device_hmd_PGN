#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PGN device
$(call inherit-product, device/hmd/PGN/device.mk)

PRODUCT_DEVICE := PGN
PRODUCT_NAME := omni_PGN
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia T10
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ussi_penguin_full-user 14 UP1A.231005.007 eng.jenkin.20240813.153317 release-keys"

BUILD_FINGERPRINT := Nokia/Penguin_00WW/PGN:14/UP1A.231005.007/00WW_3_350:user/release-keys
