# Copyright (C) 2008 The Android Open Source Project
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
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := wmtgpiodev.c
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SHARED_LIBRARIES := libutils
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libwmtgpio
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS) 

LOCAL_SRC_FILES += libgpio_api.so:system/lib/libgpio_api.so
LOCAL_SRC_FILES += libgpio_api.so:obj/SHARED_LIBRARIES/libgpio_api_intermediates/LINKED/libgpio_api.so
LOCAL_SRC_FILES += libgpio_api.so:symbols/system/lib/libgpio_api.so
LOCAL_SRC_FILES += libgpio_api.so:obj/lib/libgpio_api.so
LOCAL_SRC_FILES += export_includes:obj/SHARED_LIBRARIES/libgpio_api_intermediates/export_includes
include $(WMT_PREBUILT)