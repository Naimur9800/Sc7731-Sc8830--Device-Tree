# use specB currently, it will be trimed in future
#include vendor/sprd/operator/cucc/specB.mk

FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
    vendor/sprd/operator/cucc/specA

FEATURES.PRODUCT_PACKAGES += \
         MmsPriorityAddon \
         SystemUISupportCUCC \
         SimSupportCUCC \
         SprdCuccUserAgentAddon.apk

# Display the geocode of the caller, for cucc currently
FEATURES.PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.support.sprd_geocode=1 \
    ro.wifi.support_cucc=true
