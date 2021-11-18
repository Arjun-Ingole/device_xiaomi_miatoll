#
# Copyright (C) 2021 Project 404
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Project 404 stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/miatoll.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device specifier
PRODUCT_NAME := p404_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
$(call inherit-product, vendor/google/pixel/config.mk)
$(call inherit-product, vendor/google/gms/config.mk)
