# include by emmc BoardConfig

# emmc fstab
FSTAB_SUFFIX :=
ifeq ($(STORAGE_INTERNAL), physical)
ifeq ($(BOARD_SECURE_BOOT_ENABLE), true)
  FSTAB_SUFFIX := .secure_boot
endif
else
  FSTAB_SUFFIX := _emulated
ifeq ($(BOARD_SECURE_BOOT_ENABLE), true)
  FSTAB_SUFFIX := _emulated.secure_boot
endif
endif

TARGET_RECOVERY_FSTAB := device/sprd/scx35/emmc/recovery$(FSTAB_SUFFIX).fstab

# not have selinux now
NOT_HAVE_SELINUX := false
