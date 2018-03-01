LOCAL_PATH := $(call my-dir)

$(call add-radio-file,modem_bins/wmodem.bin)
$(call add-radio-file,modem_bins/wnvitem.bin)
$(call add-radio-file,modem_bins/wdsp.bin)
ifeq ($(strip $(USE_SPRD_WCN)),true)
$(call add-radio-file,modem_bins/wcnnvitem.bin)
$(call add-radio-file,modem_bins/wcnmodem.bin)
endif

# Compile U-Boot
ifneq ($(strip $(TARGET_NO_BOOTLOADER)),true)

INSTALLED_UBOOT_TARGET := $(PRODUCT_OUT)/u-boot.bin
INSTALLED_CHIPRAM_TARGET := $(PRODUCT_OUT)/u-boot-spl-16k.bin
-include u-boot64/AndroidUBoot.mk
-include chipram/AndroidChipram.mk

INSTALLED_RADIOIMAGE_TARGET += $(PRODUCT_OUT)/u-boot.bin
INSTALLED_RADIOIMAGE_TARGET += $(PRODUCT_OUT)/u-boot-spl-16k.bin

endif # End of U-Boot

# Compile Linux Kernel
ifneq ($(strip $(TARGET_NO_KERNEL)),true)

-include kernel/AndroidKernel.mk

file := $(PRODUCT_OUT)/kernel
ALL_PREBUILT += $(file)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

endif # End of Kernel

ifeq ($(strip $(BOARD_KERNEL_SEPARATED_DT)),true)
include vendor/sprd/open-source/tools/dt/generate_dt_image.mk
endif
