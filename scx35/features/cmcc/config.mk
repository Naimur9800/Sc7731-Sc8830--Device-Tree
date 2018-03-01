FEATURES.PRODUCT_PROPERTY_OVERRIDES += \
    ro.operator=cmcc \
    ro.device.support.sprd_geocode=1

FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
    vendor/sprd/operator/cmcc/specA/overlay

FEATURES.PRODUCT_PACKAGES += \
    MmsBlackListAddon \
    TelephonyPlugin_CMCC \
    SystemUISupportCMCC \
    SimSupportCMCC \
    WifiSettingsAddon \
    SprdCmccBookmarkAddon \
    ContactsBlackListAddon \
    SprdCmccUserAgentAddon \
    InCallUIAddon \
    DialerAddon

FEATURES.PRODUCT_PACKAGES += CallFirewallPlugin_sms \
	CallFirewallPlugin_phone

