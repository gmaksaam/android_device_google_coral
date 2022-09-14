#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := evolution_flame

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Evo Additions
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_ENABLE_BLUR := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=flame \
    PRIVATE_BUILD_DESC="flame-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/flame/flame:13/TP1A.220905.004/8927612:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
