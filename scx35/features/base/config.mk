# Spreadtrum Communications Inc.

# The config.mk will be called after "include $(APPLAY_PRODUCT_REVISION)"

# Currently, we split the feature by using properties, package including and
# overlays. We treat them as features

# WARNING, all the definations must use +=

#######################################
# properties, the properties will load on runtime, the properties may be wrote
# into /system/build.prop currently.
#######################################
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.what.property=value
#    ro.more.property=here
#    ro.you.can.split.them=as_follows

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.the.second.kind.of=property

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.if.you.don.t.to.combine=them


########################################
# Packages, the independcy packages here. Which application apks will build
# into system image.
# Such as the FileExplorer or FMPlayer
########################################
#PRODUCT_PACKAGES += \
#    FileExplorer \
#    FMPlayer

########################################
# Plugins, the plugins for applications
########################################
#PRODUCT_PLUGINS += \
#   DrmCommonAddon \
#   FileExplorerDrmAddon \

########################################
# The resources overlays
########################################
#PRODUCT_PACKAGE_OVERLAYS += \
#    the/full/path/of/the/codespace
#

########################################
# The product copies
########################################
#PRODUCT_COPY_FILES += \
#    from:to

## The telephony-common2

#PRODUCT_BOOT_JARS += \
#    telephony-common2

#FEATURES.PRODUCT_PACKAGES += \
#   telephony-common2
FEATURES.PRODUCT_PACKAGES += \
    SimLockSupport
FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
    $(PLATDIR)/features/base/overlay

FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
    vendor/sprd/operator/operator_res/operatorname_overlay
