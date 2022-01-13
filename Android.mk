LOCAL_PATH := $(call my-dir)

ifeq ($(wildcard $(LOCAL_PATH)/../demux),)

include $(CLEAR_VARS)
LOCAL_MODULE := libdmx_client
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libteec
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES_32 := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdmx_client_sys
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libteec_sys
LOCAL_SRC_FILES_32 := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := b472711b-3ada-4c37-8c2a-7c64d8af0223
LOCAL_MODULE_SUFFIX := .ta
LOCAL_STRIP_MODULE := false
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/teetz
ifeq ($(TARGET_PRODUCT), s4_skt)
LOCAL_SRC_FILES_32 := ta/Y4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := ta/Y4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
ifeq ($(TARGET_PRODUCT), oppen)
LOCAL_SRC_FILES_32 := ta/Y4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := ta/Y4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES_32 := ta/X4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := ta/Y4/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
include $(BUILD_PREBUILT)
endif
