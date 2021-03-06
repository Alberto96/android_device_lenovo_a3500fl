LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.recovery.universal5410.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.recovery.universal5410.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

ifeq ($(TW_EXCLUDE_DEFAULT_USB_INIT), true)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.recovery.usb.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= RECOVERY_EXECUTABLES
LOCAL_SRC_FILES		:= etc/init.recovery.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

endif