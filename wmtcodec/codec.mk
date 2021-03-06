#
# Copyright (c) 2013-201_ WonderMedia Technologies, Inc.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0.

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/via/common/wmtcodec

# MSVD Library necessary for common
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/libwmtcodec.so:symbols/system/lib/libwmtcodec.so \
    $(LOCAL_PATH)/libwmtcodec.so:system/lib/libwmtcodec.so \
    $(LOCAL_PATH)/libwmtcodec.so:obj/lib/libwmtcodec.so

$(shell mkdir -p  out/target/product/vixen/obj/SHARED_LIBRARIES/libwmtcodec_intermediates)
$(shell echo "" > out/target/product/vixen/obj/SHARED_LIBRARIES/libwmtcodec_intermediates/export_includes)
$(shell echo "" > out/target/product/vixen/obj/SHARED_LIBRARIES/libwmtcodec_intermediates/import_includes)
