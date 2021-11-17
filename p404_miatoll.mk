#
# Copyright (C) 2021 Project 404
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some Project 404 stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit Google Apps
$(call inherit-product, vendor/404/configs/common.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit some device stuff
$(call inherit-product, device/xiaomi/miatoll/miatoll.mk)

PRODUCT_NAME := p404_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
