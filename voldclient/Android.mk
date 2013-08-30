LOCAL_PATH := $(call my-dir)

common_cflags += -Werror \
	-Wno-error=unused-parameter

include $(CLEAR_VARS)
LOCAL_MODULE := libvoldclient
LOCAL_SRC_FILES := commands.c dispatcher.c event_loop.c
LOCAL_CFLAGS := $(common_cflags) -DMINIVOLD

LOCAL_C_INCLUDES :=         	\
    bootable/recovery       	\
    system/core/fs_mgr/include	\
    system/core/include     	\
    system/core/libcutils   	\
    system/vold
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)
