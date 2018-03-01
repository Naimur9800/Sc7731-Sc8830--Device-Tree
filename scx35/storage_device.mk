
STORAGE_OVERLAY_SUFFIX := overlay

ifeq ($(ENABLE_OTG_USBDISK), true)
  STORAGE_OVERLAY_SUFFIX := otg_overlay
endif

# storage init files
ifeq ($(STORAGE_ORIGINAL), true)
    PRODUCT_COPY_FILES += \
	    $(PLATDIR)/init.storage_original.rc:root/init.storage.rc
    PRODUCT_PACKAGE_OVERLAYS := $(PLATDIR)/storage1_$(STORAGE_OVERLAY_SUFFIX)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.storage.type=2 \
        sys.tempsd.enable=0 \
        sys.internal.emulated=1
else
ifeq ($(STORAGE_INTERNAL), emulated)
  ifeq ($(STORAGE_PRIMARY), internal)
    PRODUCT_COPY_FILES += \
	    $(PLATDIR)/init.storage1.rc:root/init.storage.rc
    PRODUCT_PACKAGE_OVERLAYS := $(PLATDIR)/storage1_$(STORAGE_OVERLAY_SUFFIX)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.storage.type=2 \
        sys.tempsd.enable=0 \
        sys.internal.emulated=1
  endif
  ifeq ($(STORAGE_PRIMARY), external)
    PRODUCT_COPY_FILES += \
	    $(PLATDIR)/init.storage2.rc:root/init.storage.rc
    PRODUCT_PACKAGE_OVERLAYS := $(PLATDIR)/storage2_$(STORAGE_OVERLAY_SUFFIX)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.storage.type=1 \
        sys.tempsd.enable=1 \
        sys.internal.emulated=1
  endif
endif

ifeq ($(STORAGE_INTERNAL), physical)
# recovery config: update from interanl storage
  ENABLE_INTERNAL_STORAGE := true
  $(warning warning :enable_internal_storage: $(ENABLE_INTERNAL_STORAGE))
  ifeq ($(STORAGE_PRIMARY), internal)
    PRODUCT_COPY_FILES += \
	    $(PLATDIR)/init.storage3.rc:root/init.storage.rc
    PRODUCT_PACKAGE_OVERLAYS := $(PLATDIR)/storage3_$(STORAGE_OVERLAY_SUFFIX)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.storage.type=2 \
        sys.tempsd.enable=0 \
        sys.internal.emulated=0
  endif
  ifeq ($(STORAGE_PRIMARY), external)
    PRODUCT_COPY_FILES += \
	    $(PLATDIR)/init.storage4.rc:root/init.storage.rc
    PRODUCT_PACKAGE_OVERLAYS := $(PLATDIR)/storage4_$(STORAGE_OVERLAY_SUFFIX)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.storage.type=1 \
        sys.tempsd.enable=1 \
        sys.internal.emulated=0
  endif
endif
endif

ifndef INSTALL_INTERNAL
  INSTALL_INTERNAL := false
endif

ifeq ($(strip $(INSTALL_INTERNAL)),true)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.storage.install2internal=1
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.storage.install2internal=0
endif

