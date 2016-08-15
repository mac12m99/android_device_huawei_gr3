LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),HWTAGL6753)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
