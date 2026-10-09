#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from base Android products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit malachite device configuration.
$(call inherit-product, device/xiaomi/malachite/device.mk)

# Project Infinity-X common configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_malachite
PRODUCT_DEVICE := malachite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24090RA29G

PRODUCT_SYSTEM_NAME := malachite_global
PRODUCT_SYSTEM_DEVICE := malachite

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/hal_mgvi_64_armv82_mt6878_global/mgvi_64_armv82:14/UP1A.231005.007/OS3.0.10.0.WOOMIXM:user/release-keys \
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Infinity-X build configuration.
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := NotKrishEnough
WITH_GAPPS := true

# Optional feature flags; enable only features supported by the ROM tree.
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_QUICK_TAP := true
