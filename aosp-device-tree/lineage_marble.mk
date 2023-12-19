#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

PRODUCT_DEVICE := marble
PRODUCT_NAME := lineage_marble
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := marble
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble-user 12 SKQ1.230401.001 V816.0.4.0.UMREUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/marble/marble:12/SKQ1.230401.001/V816.0.4.0.UMREUXM:user/release-keys
