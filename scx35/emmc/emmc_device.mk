PRODUCT_PROPERTY_OVERRIDES += \
	ro.storage.flash_type=2

ifndef STORAGE_INTERNAL
  STORAGE_INTERNAL := physical
endif
ifndef STORAGE_PRIMARY
  STORAGE_PRIMARY := external
endif

ifndef STORAGE_ORIGINAL
  STORAGE_ORIGINAL := false
endif

FSTAB_SUFFIX :=
ifeq ($(strip $(STORAGE_INTERNAL)),physical)
  FSTAB_SUFFIX := 2
endif
ifeq ($(strip $(BOARD_KERNEL_SEPARATED_DT)),true)
  FSTAB_SUFFIX := $(FSTAB_SUFFIX)_dt
  ifeq ($(ENABLE_OTG_USBDISK), true)
    FSTAB_SUFFIX := $(FSTAB_SUFFIX)_otg
  endif
endif

PRODUCT_COPY_FILES += \
	$(PLATDIR)/emmc/fstab$(FSTAB_SUFFIX).sc8830:root/fstab.sc8830

-include $(PLATDIR)/storage_device.mk

