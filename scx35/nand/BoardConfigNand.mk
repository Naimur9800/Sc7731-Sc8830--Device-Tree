# include by nand BoardConfig

# nand fstab
ifeq ($(BOARD_SECURE_BOOT_ENABLE), true)
  TARGET_RECOVERY_FSTAB := device/sprd/scx35/nand/recovery.secure_boot.fstab
else
  TARGET_RECOVERY_FSTAB := device/sprd/scx35/nand/recovery.fstab
endif

# not have selinux now
NOT_HAVE_SELINUX := false
