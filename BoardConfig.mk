#
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
#

LOCAL_PATH := device/lenovo/a3500fl

BOARD_VENDOR := lenovo

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := a3500fl,a3500-fl,A3500FL,A3500-FL,lcsh82_tb_3gfull_kk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt8121
TARGET_NO_BOOTLOADER := true

# Build
TARGET_USES_BLOCK_BASED_OTA := false
TARGET_PROVIDES_INIT_RC := true

# Platform
TARGET_BOARD_PLATFORM := mt6582
BOARD_HAS_MTK_HARDWARE := true
#BOARD_USES_MTK_KERNELBUILD := true

MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Compiler Tweaks
#BOARD_GLOBAL_CFLAGS += -mtune=cortex-a7
#BOARD_GLOBAL_CPPFLAGS += -mtune=cortex-a7

# Kernel
#BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_CONFIG := a3500fl_defconfig
#TARGET_KERNEL_SOURCE := kernel/lenovo/a3500fl
TARGET_PREBUILT_KERNEL := device/lenovo/a3500fl/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/a3500fl/mkbootimg.mk

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BACKLIGHT_PATH := "/sys/class/leds/lcd-backlight"
#CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# CMHW
#BOARD_HARDWARE_CLASS := device/lenovo/a3500fl/cmhw

# DRM
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_USES_LEGACY_MMAP := true

# FileSystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
# Faked Recovery Image Size, due to limited partition size
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1126400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6283776000
BOARD_FLASH_BLOCK_SIZE := 4096

# Graphics
BOARD_EGL_SYSTEMUI_PBSIZE_HACK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#COMMON_GLOBAL_CFLAGS += -DSURFACE_IS_BGR32
HWUI_COMPILE_FOR_PERF := true
#MAX_EGL_CACHE_KEY_SIZE := 12*1024
#MAX_EGL_CACHE_SIZE := 2048*1024
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TARGET_RECOVERY_DEVICE_MODULES += init.recovery.usb.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.mt8121
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/etc/init.rc
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# TWRP Specific
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight"
TW_DISABLE_TTF := true
#TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_EXCLUDE_SUPERSU := true
#TW_INCLUDE_L_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NO_EXFAT := true
TW_NO_EXFAT_FUSE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_USB_STORAGE := true
TW_THEME := portrait_mdpi

# WiFi
BOARD_WLAN_DEVICE                := mt66xx
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM        := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_AP           := "AP"
WIFI_DRIVER_FW_PATH_STA          := "STA"
WIFI_BAND                        := 802_11_BG
