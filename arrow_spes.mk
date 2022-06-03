#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Additions
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)

# Product Specifics
PRODUCT_NAME := arrow_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

DEVICE_MAINTAINER := Ridwan Adi Cahyono
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 11 RKQ1.211001.001 V13.0.9.0.RGCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spes/spes:11/RKQ1.211001.001/V13.0.9.0.RGCMIXM:user/release-keys
