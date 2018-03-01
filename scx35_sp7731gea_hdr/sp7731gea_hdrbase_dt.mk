include device/sprd/scx35_sp7731gea_hdr/sp7731gea_hdr_dt_common.mk

# include the base version features
include $(PLATDIR)/base.mk

# Overrides
PRODUCT_NAME := sp7731gea_hdrbase_dt
PRODUCT_DEVICE := $(TARGET_BOARD)
PRODUCT_MODEL := SP7731G
PRODUCT_BRAND := SPRD
PRODUCT_MANUFACTURER := SPRD

PRODUCT_LOCALES := zh_CN zh_TW en_US
