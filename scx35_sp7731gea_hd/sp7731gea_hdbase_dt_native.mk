include device/sprd/scx35_sp7731gea_hd/sp7731gea_hdbase_dt.mk

# native flag is this
BUILDING_PDK_NATIVE := true

include $(APPLY_PRODUCT_REVISION)

# Overrides
PRODUCT_NAME := sp7731gea_hdbase_dt_native
PRODUCT_DEVICE := $(TARGET_BOARD)
PRODUCT_MODEL := SP7731G
PRODUCT_BRAND := SPRD
PRODUCT_MANUFACTURER := SPRD

PRODUCT_LOCALES := zh_CN zh_TW en_US
