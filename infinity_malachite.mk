#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration.
$(call inherit-product, device/xiaomi/malachite/device.mk)

# Inherit Infinity-X common configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_malachite
PRODUCT_DEVICE := malachite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24095PCADI

PRODUCT_SYSTEM_NAME := malachite_global
PRODUCT_SYSTEM_DEVICE := malachite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Infinity-X device feature flags.
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_QUICK_TAP := true
