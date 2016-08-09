###############################################################################
# StressTest
LOCAL_PATH := $(call my-dir)

ifeq ($(strip $(TARGET_BOARD_HARDWARE)), rk30board)

include $(CLEAR_VARS)
LOCAL_MODULE := DeviceTest
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_OVERRIDES_PACKAGES := 
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
include $(BUILD_PREBUILT)

endif

ifeq ($(strip $(TARGET_BOARD_HARDWARE)), sofiaboard)

include $(CLEAR_VARS)
LOCAL_MODULE := DeviceTest
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_OVERRIDES_PACKAGES := 
ifneq ($(DISABLE_MODEM),true)
LOCAL_SRC_FILES := $(LOCAL_MODULE)_sofia.apk
else
LOCAL_SRC_FILES := $(LOCAL_MODULE)_sofia_wifionly.apk
endif
LOCAL_PREBUILT_JNI_LIBS := lib/librkinfoDeviceTest.so
include $(BUILD_PREBUILT)

endif
