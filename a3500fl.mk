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

USE_CAMERA_STUB := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/lenovo/a3500fl

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot Animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.mt8121 \
	init.mt8121.rc \
	init.mt8121.usb.rc \
	init.mt8121.wifi.rc \
	ueventd.mt8121.rc

# Recovery Ramdisk
PRODUCT_PACKAGES += \
	init.recovery.mt8121.rc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# AAPT Config
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := tablet

# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	ro.secure=0

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.r_submix.default \
	audio.usb.default \
	tinymix

PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.disable=1

# Camera
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1

# Charger
PRODUCT_PACKAGES += \
	charger_res_images

# FileSystem
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# GearCM Extras
PRODUCT_PACKAGES += \
	OTAUpdates \
	Screencast

# GPS
#PRODUCT_COPY_FILES += \

# GPU
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.hwui.disable_scissor_opt=true

# Hardware Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Keylayouts
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
#	$(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
#	$(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Lights
PRODUCT_PACKAGES += \
	lights.mt6582

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# SELinux
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.build.selinux=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.selinux=0

# SuperSU
PRODUCT_PACKAGES += \
	.installed_su_daemon \
	99SuperSUDaemon \
	daemonsu \
	install-recovery \
	libsupol.so \
	su \
	sugote \
	SuperSU \
	supolicy

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.root_access=0

# Tethering Config
PRODUCT_PROPERTY_OVERRIDES += \
	net.tethering.noprovisioning=true

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

# VM Config
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.checkjni=false \
	dalvik.vm.dex2oat-filter=everything \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	dalvik.vm.image-dex2oat-filter=everything \
	dalvik.vm.isa.arm.features=lpae,div \
	ro.kernel.android.checkjni=0

# Wi-Fi
PRODUCT_PACKAGES += \
	dhcpcd.conf \
	hostapd \
	libnetcmdiface \
	macloader \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
#$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lenovo/a3500fl/a3500fl-vendor.mk)
