
PRODUCT_PROPERTY_OVERRIDES += \
	ro.msms.phone_count=1 \
	persist.msms.phone_count=1 \
	persist.msms.phone_default=0 \
	ro.modem.w.count=1

$(call inherit-product-if-exists, vendor/sprd/open-source/base_special_packages.mk)
