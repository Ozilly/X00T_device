#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Boot animation
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from X00T device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00T
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := havoc_X00T
PRODUCT_MODEL := ZB602KL
PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00T

# Havoc Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
	ro.havoc.maintainer=Ozilly

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := LeEco/ZL1_NA/le_zl1:6.0.1/WEXNAOP5802101261S/letv01261206:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T_6 \
    PRODUCT_NAME=RU_X00TD \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 1309 release-keys"
