
# Copyright (C) 2011 The Android Open-Source Project
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

# Yuntao remove this one, it will take effects in all build products!
# SPRD: Add LowCost switcher for cutting rom size
#ifneq ($(filter scx35_sp7731gea_hd%, $(TARGET_PRODUCT)),)
#  TARGET_LOWCOST_SUPPORT := true
#endif

#use sprd's four(wifi bt gps fm) integrated one chip
USE_SPRD_WCN := true

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/sp7731gea_hdplus_dt.mk \
	$(LOCAL_DIR)/sp7731gea_hdbase_dt.mk \
        $(LOCAL_DIR)/sp7731geahdplusoversea.mk \
        $(LOCAL_DIR)/sp7731geahdpluscucc.mk \
        $(LOCAL_DIR)/sp7731geahdpluscmcc.mk \
        $(LOCAL_DIR)/sp7731geahdplus_Multi.mk \
        $(LOCAL_DIR)/sp7731geahdplus_dlm.mk
