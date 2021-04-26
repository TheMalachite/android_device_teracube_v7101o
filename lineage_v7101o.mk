#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from v7101o device
$(call inherit-product, device/teracube/v7101o/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_v7101o
PRODUCT_DEVICE := v7101o
PRODUCT_BRAND := Teracube
PRODUCT_MODEL := Teracube One
PRODUCT_MANUFACTURER := Teracube
    
PRODUCT_GMS_CLIENTID_BASE := android-teracube

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=v7101o \
    PRIVATE_BUILD_DESC="Teracube_One-user 10 QP1A.190711.020 q0mp1t1v1001bsp release-keys"

BUILD_FINGERPRINT := Teracube/Teracube_One/Teracube_One:10/QP1A.190711.020/q0mp1t1v1001bsp:user/release-keys
