# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from a3500fl device
$(call inherit-product, device/lenovo/a3500fl/a3500fl.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

PRODUCT_NAME := cm_a3500fl
PRODUCT_DEVICE := a3500fl
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := A3500-FL

PRODUCT_BRAND := lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_MODEL=A3500-FL \
	PRODUCT_NAME=a3500fl \
	PRODUCT_DEVICE=a3500fl \
	TARGET_DEVICE=a3500fl \
	BUILD_FINGERPRINT="Lenovo/A3500-FL/A3500FL:4.4.2/KOT49H/A3500FL_S001_1127:user/release-keys" \
	PRIVATE_BUILD_DESC="lcsh82_tb_3gfull_kk-user 4.4.2 KOT49H 23 release-keys"

TARGET_UNOFFICIAL_BUILD_ID := GearCM