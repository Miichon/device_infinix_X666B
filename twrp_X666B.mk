#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X666B device
$(call inherit-product, device/infinix/X666B/device.mk)

PRODUCT_DEVICE := X666B
PRODUCT_NAME := twrp_X666B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Hot 20
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x666_p740ae-user 12 SP1A.210812.016 270451 release-keys"

BUILD_FINGERPRINT := Infinix/X666B-OP/Infinix-X666B:12/SP1A.210812.016/230311V880:user/release-keys
