include device/sprd/scx35_sp7731gea_hdr/sp7731gea_hdr_dt_common.mk

include $(PLATDIR)/plus.mk

include $(APPLY_PRODUCT_REVISION)

# Overrides
PRODUCT_NAME := sp7731gea_hdrplus_dt
PRODUCT_DEVICE := $(TARGET_BOARD)
PRODUCT_MODEL := SP7731G
PRODUCT_BRAND := SPRD
PRODUCT_MANUFACTURER := SPRD

PRODUCT_LOCALES := zh_CN zh_TW en_US
