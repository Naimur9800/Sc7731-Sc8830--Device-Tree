include device/sprd/scx35_sp7731gea/sp7731geaplus_dt.mk

# we thought the BUILDING_PDK_NATIVE is no longer take effects
#BUILDING_PDK_NATIVE := true

PRODUCT_REVISION := common cucc
include $(APPLY_PRODUCT_REVISION)

# Overrides
PRODUCT_NAME := sp7731geaplus_dt_cucc
PRODUCT_DEVICE := $(TARGET_BOARD)
PRODUCT_MODEL := SP7731G
PRODUCT_BRAND := SPRD
PRODUCT_MANUFACTURER := SPRD

PRODUCT_LOCALES := zh_CN zh_TW en_US
