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

# Inherit from TB-7304F device
$(call inherit-product, device/lenovo/TB-7304F/device.mk)

PRODUCT_DEVICE := TB-7304F
PRODUCT_NAME := omni_TB-7304F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-7304F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB-7304F_RF01_171019 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-7304F/TB-7304F:7.0/NRD90M/TB-7304F_S000060_171019_ROW:user/release-keys
