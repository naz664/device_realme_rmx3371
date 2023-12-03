#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rmx3371 device
$(call inherit-product, device/realme/rmx3371/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable extra UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Matrixx Maintainer Info
#MATRIXX_MAINTAINER := Nazim
#MATRIXX_CHIPSET := Snapdragon®870
#MATRIXX_BATTERY := 5000mAh

# GAPPS
#WITH_GMS :=true # this is needed to reserve partitions
WITH_GAPPS := true
TARGET_INCLUDE_GOOGLE_TELEPHONY := false
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_INCLUDE_GOOGLE_CAMERA := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_GMAIL := false
TARGET_INCLUDE_GOOGLE_MAPS := false

PRODUCT_NAME := lineage_rmx3371
PRODUCT_DEVICE := rmx3371
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371

PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 13 TP1A.220905.001 S.cd290a_d5d0-4 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:13/TP1A.220905.001/S.cd290a_d5d0-4:user/release-keys
