#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Base Android products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Malachite device configuration
$(call inherit-product, device/xiaomi/malachite/device.mk)

# MistOS common configuration
$(call inherit-product, vendor/mist/config/common_full_phone.mk)

# MistOS build flags (as requested)
MIST_BUILD_TYPE := UNOFFICIAL
MISTOS_MAINTAINER := NotKrishEnough
WITH_GMS := true
TARGET_ENABLE_BLUR := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK := true

PRODUCT_NAME := mist_malachite
PRODUCT_DEVICE := malachite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X7 5G

PRODUCT_SYSTEM_NAME := malachite_global
PRODUCT_SYSTEM_DEVICE := malachite

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/hal_mgvi_64_armv82_mt6878_global/mgvi_64_armv82:14/UP1A.231005.007/OS3.0.10.0.WOOMIXM:user/release-keys \
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_MODEL) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
